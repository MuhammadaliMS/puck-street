# Puck Street

**Play:** https://zerowing.in/games/puck-street/

2v2 street ball hockey in a clay 3D diorama, built with Three.js in a single HTML file. Fifth game in the street-sport family (Galli Cricket, Panna Cage, Block Hoops, Sand Spike).

## Streets
- **Toronto Suburb**: snow-dusted street, brick houses, red maples, a garage with a basketball hoop, parked cars, a paper coffee cup on the curb. Twist: **CAR!** Every so often a car turns into the street. Everyone drags the nets to the curbs, the car rolls through, then it is GAME ON with a face-off where the ball was. A goal scored during the warning beat does not count.
- **Montreal Winter Lane**: a back lane with spiral outdoor staircases, snowbanks, falling snow and warm window light. Twist: the snowbanks are walls that the ball rebounds off softly, and a goal that comes off a snowbank is a **BANK SHOT!** worth 2. Fresh snow patches (they move at every face-off) slow the ball and the players.
- **Helsinki Courtyard**: a frozen-flooded courtyard rink between pastel apartment blocks, a sauna shed with smoke, birches. Twist: natural ice. You slide and turn wide and the ball glides far. Skate over the cracked thin ice in the middle at full speed and you go **SPLAT!** and lose the ball.

## Rules
Two small nets in the road, no goalies, an orange street-hockey ball. First to 7 goals, or the leader after 4:00 of play; if it is tied, sudden death (next goal wins). Face-off at centre after every goal, with the ball dropped between two players. The ball bounces off the curbs; a ball that goes far down the street is fetched by a kid.

## Controls
- **Move:** WASD / arrows / left stick. The ball sticks to your blade while you stickhandle.
- **SHOOT (Space, Enter for P2):** tap = wrist shot, or a pass if you are aimed at your teammate; hold = slapshot with a wind-up (power meter over your player), release to fire. Without the ball the same button is **STEAL**, a stick poke.
- **PASS (Q or Shift, Right Shift for P2):** pass to your teammate. Without the ball it **switches** you to your teammate.
- **1 player:** you + an AI teammate vs two AI opponents. **2 players (one keyboard):** P1 WASD + Space + Q, P2 arrows + Enter + Right Shift, each with an AI teammate.
- **Phone (landscape):** floating left stick, a big SHOOT/STEAL button, a smaller PASS/SWITCH button, pause. 2 players needs a keyboard.
- T cycles time of day (Day, Golden, Night, Rain; in these winter streets "Rain" is a snowfall), M mutes, P toggles the pixel look, Esc pauses, R returns to the menu.

## Testing hooks
`window.__puck` exposes `state, score, ball, players, stats, setLocation(id), setTime(id), startGame(mode), bot, aiBoth, speed, sim(seconds), step(n)`. Set `__puck.aiBoth = true` and AI plays both sides; `__puck.bot = true` lets the scripted AI drive your side (a function `(player, dt) => {}` is also accepted). `sim()` runs the game headless (no rendering, no sound).

## Development
Edit `game.html`, then run `./build.sh` to regenerate `index.html`.
