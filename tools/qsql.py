import csv, collections, sys
csv.field_size_limit(10**9)
objs = list(csv.DictReader(open('objects.tsv', encoding='utf-8'), delimiter='\t', quoting=csv.QUOTE_NONE))
byname = {o['Name']: o['Id'] for o in objs if o['Type'] == '5'}
rows = collections.defaultdict(list)
for r in csv.DictReader(open('msysqueries.tsv', encoding='utf-8'), delimiter='\t', quoting=csv.QUOTE_NONE): rows[r['ObjectId']].append(r)
def sql(name):
    rs = rows.get(byname.get(name, ''), [])
    if not rs: return None
    g = lambda a: [r for r in rs if r['Attribute'] == a]
    typ = {'1': 'SELECT', '2': 'MAKE TABLE', '3': 'APPEND', '4': 'UPDATE', '5': 'DELETE', '6': 'CROSSTAB'}.get((g('1') or [{'Flag': '1'}])[0]['Flag'], '?')
    out = ', '.join(r['Expression'] + (' AS ' + r['Name1'] if r['Name1'] else '') for r in g('6'))
    frm = ', '.join(r['Name1'] + (' AS ' + r['Name2'] if r['Name2'] else '') for r in g('5'))
    joins = ' '.join('JOIN %s↔%s ON %s' % (r['Name1'], r['Name2'], r['Expression']) for r in g('7'))
    where = ' AND '.join(r['Expression'] for r in g('8'))
    grp = ', '.join(r['Expression'] for r in g('9')); order = ', '.join(r['Expression'] for r in g('11'))
    s = '%s %s FROM %s %s' % (typ, out, frm, joins)
    if where: s += ' WHERE ' + where
    if grp: s += ' GROUP BY ' + grp
    if order: s += ' ORDER BY ' + order
    return s
if __name__ == '__main__':
    for n in sys.argv[1:]: print('==', n); print(sql(n))
