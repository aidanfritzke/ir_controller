this repo contains the as built schematic and script used to send NEC Infrared (IR) Remote Control Protocol communications through a usb-ttl module to direct drive an IR led

i built this because i did not want to let the TUYO "Smart Home" app connect to everything on my network. and because i was curious if it would work.

the .bat script is configured to run every morning via windows task scheduler to turn on a smart lamp. i was tired of waking up in the dark


76800 baud, 8N1 — 0x55 = 38.4 kHz carrier (mark), 0xFF = idle (space)

~10 mA through the LED, range 20–50 cm

NEC 0x00 is the power toggle command for this paticular lamp


alt_scripts holds other .bat files that control the lamp

sch holds schemtics

single holds .bin of NEC commands 0x00 - 0xFF, as well as a 10 second long 38.4kHz carrier wave .bin

demo_vids holds demo vids


Toggle demo:

https://github.com/user-attachments/assets/d9ead0c6-5c90-4590-a9ae-0ad99601a6df

Carrier demo:

https://github.com/user-attachments/assets/bea377ed-3695-4c54-9e85-16011c948449
