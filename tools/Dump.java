import com.healthmarketscience.jackcess.*;
import java.io.*; import java.util.*;
public class Dump {
  public static void main(String[] a) throws Exception {
    Database db = new DatabaseBuilder(new File(a[0])).setReadOnly(true).open();
    Table t = db.getSystemTable("MSysAccessObjects");
    TreeMap<Integer,byte[]> m = new TreeMap<>();
    for (Row r : t) m.put(r.getInt("ID"), (byte[]) r.get("Data"));
    try (FileOutputStream o = new FileOutputStream("accessobjects.bin")) { for (byte[] b : m.values()) o.write(b); }
    System.out.println("chunks " + m.size() + " first=" + m.firstKey() + " last=" + m.lastKey());
    Table q = db.getSystemTable("MSysQueries");
    try (PrintWriter w = new PrintWriter(new OutputStreamWriter(new FileOutputStream("msysqueries.tsv"),"UTF-8"))) {
      w.println("ObjectId\tAttribute\tExpression\tFlag\tName1\tName2\tOrder");
      for (Row r : q) w.println(r.get("ObjectId")+"\t"+r.get("Attribute")+"\t"+clean(r.get("Expression"))+"\t"+r.get("Flag")+"\t"+clean(r.get("Name1"))+"\t"+clean(r.get("Name2"))+"\t"+(r.get("Order")==null?"":Base64.getEncoder().encodeToString((byte[])r.get("Order"))));
    }
    try (PrintWriter w = new PrintWriter(new OutputStreamWriter(new FileOutputStream("objects.tsv"),"UTF-8"))) {
      w.println("Id\tParentId\tName\tType\tDatabase\tForeignName\tDateCreate\tDateUpdate");
      for (Row r : db.getSystemTable("MSysObjects")) w.println(r.get("Id")+"\t"+r.get("ParentId")+"\t"+r.get("Name")+"\t"+r.get("Type")+"\t"+clean(r.get("Database"))+"\t"+clean(r.get("ForeignName"))+"\t"+r.get("DateCreate")+"\t"+r.get("DateUpdate"));
    }
    // local tables schema
    try (PrintWriter w = new PrintWriter(new OutputStreamWriter(new FileOutputStream("local_schema.tsv"),"UTF-8"))) {
      w.println("Table\tColumn\tType\tLength\tRows");
      for (String n : db.getTableNames()) { try { Table tt = db.getTable(n); if (tt==null) continue; for (Column c : tt.getColumns()) w.println(n+"\t"+c.getName()+"\t"+c.getType()+"\t"+c.getLength()+"\t"+tt.getRowCount()); } catch (Exception e) { w.println(n+"\t#ERR "+e.getMessage()); } }
    }
  }
  static String clean(Object o){ return o==null?"":o.toString().replace("\t"," ").replace("\r"," ").replace("\n"," "); }
}
