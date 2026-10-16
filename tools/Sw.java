import com.healthmarketscience.jackcess.*; import java.io.*;
public class Sw { public static void main(String[] a) throws Exception {
  Database db = new DatabaseBuilder(new File(a[0])).setReadOnly(true).open();
  Table t = db.getTable("Switchboard Items");
  try (PrintWriter w = new PrintWriter("switchboard.tsv","UTF-8")) {
    w.println(String.join("\t", t.getColumns().stream().map(Column::getName).toArray(String[]::new)));
    for (Row r : t) { StringBuilder sb=new StringBuilder(); for (Column c: t.getColumns()) { Object v=r.get(c.getName()); sb.append(v==null?"":v.toString().replace("\t"," ")).append("\t"); } w.println(sb.toString()); }
  }
}}
