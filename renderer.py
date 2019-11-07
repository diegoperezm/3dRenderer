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

lis = (gnu_apl.exec("((⍳10)(⌽⍳10)(⍳10)(⌽⍳10)(⍳10))"))

arr = []

for index, value in enumerate(lis[1][1]):
 arr.append(value[1])


def run():
 sdl2.ext.init()
 window = sdl2.ext.Window("This is a WINDOW", size=(400, 600))
 window.show()

 surface = sdl2.ext.Window.get_surface(window)
 renderer = sdl2.ext.Renderer(window)
 running  =  True

 while running:
    for event in sdl2.ext.get_events():
      if event.type == sdl2.SDL_QUIT:
           running = False
           break
      if event.type == sdl2.SDL_KEYDOWN:
           break
      if event.type == sdl2.SDL_MOUSEBUTTONDOWN:
           running = False
           break
    sdl2.SDL_Delay(100)

    renderer.clear(0)

    for y,a in enumerate(arr):
     for x,b in enumerate(a):
      if arr[y][x] == 1:
       renderer.fill(((x*WIDTH),(y*HEIGHT), WIDTH, HEIGHT), RED)
      else:
       renderer.draw_rect(((x*WIDTH),(y*HEIGHT), WIDTH, HEIGHT), WHITE)
    renderer.present()

if __name__ == "__main__":
  sys.exit(run())
