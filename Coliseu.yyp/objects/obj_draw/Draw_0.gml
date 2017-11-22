if (ds_exists(ds_depthgrid, ds_type_grid)) {
  // ----
  var dephtgrid = ds_depthgrid;
  var instNum = instance_number(obj_base);

  ds_grid_resize(dephtgrid, 2, instNum);

  var yy = 0;

  with(obj_base) {
    dephtgrid[# draw.id,yy] = id;
    dephtgrid[# draw.y, yy] = y;

    yy += 1;
  }

  ds_grid_sort(ds_depthgrid, draw.y, true);
  yy = 0; repeat(instNum){
    var instanceId = ds_depthgrid[# draw.id, yy];
    with(instanceId) {
      draw_self();
    }
    yy += 1;
  }
  ds_grid_clear(ds_depthgrid, 0);
}