import olefile,struct
def dirdata(o,root):
    d=o.openstream(root+'/\x03DirData').read()
    i=4; out={}
    while i+2<=len(d):
        t,l=d[i],d[i+1]
        if t!=4 or l<4: break
        name=d[i+2:i+2+l-4].decode('utf-16le'); oid=struct.unpack('<I',d[i+2+l-4:i+2+l])[0]
        out[oid]=name; i+=2+l
    return out
