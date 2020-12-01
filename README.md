**Commands**:<br/>
**P**: Go into place mode<br/>
**Mouse Scroll Wheel**: Change blocks while in place mode.<br/>
**S**: Save the current room, including an occupancy grid and static vs. dynamic map<br/>
**L**: Load the room from the save file room_placement.save.<br/>
**SPACE**: Start/stop the simulation<br/>
**ESC**: Exit place mode or the simulation.<br/>
**Arrow Keys**: While the simulation is running, you can control the robot with the arrow keys.<br/>

**File Formats**:<br/>
**Angles.data**: It lists all the sensor angles (between 0 and 360), relative to the robot, where 0 degrees is the angle the robot is facing. Every value is 16 bits, small endian, listed in order from sensor #0, to sensor #(sensor_num-1). (There are 21 sensors by default) <br/>
**number_of_steps.data**: Just a single number, written in ASCII of how many  steps the simulation lasted. There are 32 steps per second.<br/>
**Controls.data**: Every step, there are two 8-bit values saved: d_dist (the distance traveled in the step in pixels) and d_dir (the change in angle in the step in degrees).<br/>
**Controls_Noisy.data**: Same as Controls, but instead it is 32-bit floats and includes normal additive noise.
**Measurements.data**: Every step, there are 21 (or num_sensors) values saved from the result of the laser distance sensors. There are 16 bit values, giving each laser's measured distance from a wall or box, or a max_sensor_range of 128 if not reached.<br/>
**Measurements_Noisy.data**: Same as Measurements, but instead it uses 32-bit floats and includes normal additive noise.
**State.data**: Every step, it records three 32-bit floats - x, y, and direction (0-360).
**occupancy_grid.omap**: It starts with ASCII test, giving the room width in pixels, a comma, and the room height in pixels, then a null character. Then it lists all the pixels row by row, where each 8-bit value is either 1 (occupied) or 0 (unoccupied).<br/>
**permanence.pmap**: Just like the occupancy grid file, it starts with ASCII test, giving the room width in pixels, a comma, and the room height in pixels, then a null character. Then it lists all the pixels row by row, where each 8-bit value is either 1 (static) or 0 (dynamic).<br/>
**room_placement.save**: This is used by the simulator to save the current room or load it.

To place blocks, press P and scroll with your mouse wheel until you see the block you want to place. Then left click to place. To delete blocks, select the block that looks like an X. "Placing" that block in a location will delete any other block in its place. To place multiple blocks, you can drag-click and release. To start the simulation, make sure you've placed the robot somewhere in the room, then press SPACE. You can then move your robot with the arrow keys. To end the simulation, either let 2 minutes pass, or press SPACE again. 




