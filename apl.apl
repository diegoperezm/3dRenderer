canvas      ←   10     10      ⍴ 0 0 0 0 1
topLeft     ←    ¯3    ¯0.5    1
topRight    ←  1.28    0.86 ¯0.5
bottomLeft  ← ¯1.28   ¯0.86 ¯0.5
bottomRight ←  1.28   ¯0.86 ¯0.5
imagePlane ← topLeft topRight bottomLeft bottomRight
4 1 ⍴ imagePlane
imagePlane topLeft
vector3 ← {⍵} 
vector3 0 0 2
camera ← vector3 0 0 2
camera
ray ← {⍵}
sphere ← {⍵}
newSphere ← sphere ¯1.1 0.6 ¯1

