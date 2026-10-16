# Rebuild explorer.html: legacy extract (nmis_frontend.json) + GrowHub schema (growhub.json from growhub.py)
import json, os
HERE = os.path.dirname(os.path.abspath(__file__)); OUT = os.path.dirname(HERE)
d = json.load(open(OUT + '/nmis_frontend.json')); d.pop('localTables', None)
d['growhub'] = json.load(open(OUT + '/growhub.json'))
d['mapping'] = json.load(open(OUT + '/mapping.json'))
d['reach'] = json.load(open(OUT + '/reachability.json'))
fe = json.load(open(OUT + '/growhub_frontend.json')); fe.pop('services', None); d['fe'] = fe
d['be'] = json.load(open(OUT + '/growhub_backend.json'))
d['rules'] = json.load(open(OUT + '/rules.json')) if os.path.exists(OUT + '/rules.json') else []
s = json.dumps(d, separators=(',', ':'), default=list).replace('</', '<\\/')
open(OUT + '/explorer.html', 'w').write(open(HERE + '/explorer_template.html').read().replace('__DATA__', s))
