import gnu_apl
import sys
import sdl2
import sdl2.ext

WHITE  = sdl2.ext.Color(255, 255, 255)
RED    = sdl2.ext.Color(255,   0, 0)
GREEN  = sdl2.ext.Color(0,   255, 0)
BLUE   = sdl2.ext.Color(0,     0, 255)
BLACK  = sdl2.ext.Color(0,     0, 0)

WIDTH  = 20
HEIGHT = 20

gnu_apl.command(")COPY ./apl")

# aplVar => list 
def makeImage(aplVar):
  data     = gnu_apl.get_ravel(aplVar)
  shape    = gnu_apl.get_shape(aplVar)
  shapeY   = shape[0] 
  shapeX   = shape[1] 
  arr      = [ [0 for x in range(shapeX)] for y in range(shapeY)]
  for y in range(shapeY):
   for x in range(shapeX):
    arr[y][x]=data[x]
  return arr

image = makeImage("canvas")

def run():
 sdl2.ext.init()
 window = sdl2.ext.Window("This is a WINDOW", size=(200, 300))
 window.show()

 surface  = sdl2.ext.Window.get_surface(window)
 renderer = sdl2.ext.Renderer(window)
 running  =  True

 renderer.clear(0)

 for y,a in enumerate(image):
  for x,b in enumerate(a):
   if image[y][x] == 1:
    renderer.fill(((x*WIDTH),(y*HEIGHT), WIDTH, HEIGHT), RED)
   else:
    renderer.draw_rect(((x*WIDTH),(y*HEIGHT), WIDTH, HEIGHT), WHITE)
 renderer.present()


 while running:
    for event in sdl2.ext.get_events():
      if event.type == sdl2.SDL_QUIT:
           running = False
           break
      if event.type == sdl2.SDL_KEYDOWN:
           running = False
           break
      if event.type == sdl2.SDL_MOUSEBUTTONDOWN:
           running = False
           break
    sdl2.SDL_Delay(10)



if __name__ == "__main__":
  sys.exit(run())
