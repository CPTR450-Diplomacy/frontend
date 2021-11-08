import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.green), home: HexMap());
  }
}

class HexMap extends StatefulWidget {
  const HexMap({Key? key}) : super(key: key);
  @override
  HexMapState createState() => HexMapState();
}

class HexMapState extends State<HexMap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('HexMap Example')),
        body: CustomMultiChildLayout(
          delegate: MyDelegate(),
          children: [
            LayoutId(
                id: 1,
                child: SvgPicture.string(
                  '''<svg version="1.1" width="800" height="800" xmlns="http://www.w3.org/2000/svg">
  <g transform="scale(2,2)">
    <g id="background-ead46bc7"/>
    <g id="background-images-ead46bc7"/>
    <g id="graphpaper-ead46bc7">
      <g id="axis-ead46bc7">
        <g>
          <g>
            <path fill="none" stroke="rgb(0,0,0)" class="dcg-svg-tickmark" paint-order="fill stroke markers" d="" stroke-opacity="0.9" stroke-miterlimit="2" stroke-width="1.5" stroke-dasharray=""/>
          </g>
        </g>
      </g>
    </g>
    <g id="expressions-ead46bc7">
      <g id="sketch-ead46bc7">
        <title>Expression 20</title>
        <path fill="#000000" stroke="none" class="dcg-svg-region" paint-order="stroke fill markers" d=" M 183.83682263700945 241.8689893873738 L 175.21834058812638 226.94134059458798 L 157.9813764903602 226.94134059458798 L 149.36289444147712 241.8689893873738 L 157.9813764903602 256.7966381801596 L 175.21834058812638 256.7966381801596 L 183.83682263700945 241.8689893873738" fill-opacity="0.4"/>
      </g>
      <g id="sketch-ead46bc7">
        <title>Expression 21</title>
        <path fill="#000000" stroke="none" class="dcg-svg-region" paint-order="stroke fill markers" d=" M 183.83682263700945 241.8689893873738 L 201.0737867347756 241.8689893873738 L 209.6922687836587 226.94134059458798 L 201.0737867347756 212.01369180180217 L 183.83682263700945 212.01369180180217 L 175.21834058812638 226.94134059458798 L 183.83682263700945 241.8689893873738" fill-opacity="0.4"/>
      </g>
      <g id="sketch-ead46bc7">
        <title>Expression 22</title>
        <path fill="#000000" stroke="none" class="dcg-svg-region" paint-order="stroke fill markers" d=" M 157.9813764903602 226.94134059458798 L 175.21834058812638 226.94134059458798 L 183.83682263700945 212.01369180180217 L 175.21834058812638 197.08604300901635 L 157.9813764903602 197.08604300901635 L 149.36289444147712 212.01369180180217 L 157.9813764903602 226.94134059458798" fill-opacity="0.4"/>
      </g>
      <g id="sketch-ead46bc7">
        <title>Expression 23</title>
        <path fill="#000000" stroke="none" class="dcg-svg-region" paint-order="stroke fill markers" d=" M 157.9813764903602 197.08604300901635 L 175.21834058812638 197.08604300901635 L 183.83682263700945 182.15839421623053 L 175.21834058812638 167.23074542344472 L 157.9813764903602 167.23074542344472 L 149.36289444147712 182.15839421623053 L 157.9813764903602 197.08604300901635" fill-opacity="0.4"/>
      </g>
      <g id="sketch-ead46bc7">
        <title>Expression 25</title>
        <path fill="#000000" stroke="none" class="dcg-svg-region" paint-order="stroke fill markers" d=" M 175.21834058812638 167.23074542344472 L 183.83682263700945 182.15839421623053 L 201.0737867347756 182.15839421623053 L 209.6922687836587 167.23074542344472 L 201.0737867347756 152.3030966306589 L 183.83682263700945 152.3030966306589 L 175.21834058812638 167.23074542344472" fill-opacity="0.4"/>
      </g>
      <g id="sketch-ead46bc7">
        <title>Expression 26</title>
        <path fill="#000000" stroke="none" class="dcg-svg-region" paint-order="stroke fill markers" d=" M 183.83682263700945 212.01369180180217 L 201.0737867347756 212.01369180180217 L 209.6922687836587 197.08604300901635 L 201.0737867347756 182.15839421623053 L 183.83682263700945 182.15839421623053 L 175.21834058812638 197.08604300901635 L 183.83682263700945 212.01369180180217" fill-opacity="0.4"/>
      </g>
      <g id="sketch-ead46bc7">
        <title>Expression 27</title>
        <path fill="#000000" stroke="none" class="dcg-svg-region" paint-order="stroke fill markers" d=" M 183.83682263700945 241.8689893873738 L 201.0737867347756 241.8689893873738 L 209.6922687836587 256.7966381801596 L 201.0737867347756 271.72428697294544 L 183.83682263700945 271.72428697294544 L 175.21834058812638 256.7966381801596 L 183.83682263700945 241.8689893873738" fill-opacity="0.4"/>
      </g>
    </g>
    <g id="labels-ead46bc7"/>
  </g>
</svg>''',
                  color: Colors.purpleAccent,
                )),
            LayoutId(
                id: 2,
                child: SvgPicture.string(
                  '''<svg version="1.1" width="800" height="800" xmlns="http://www.w3.org/2000/svg">
  <g transform="matrix(2, 0, 0, 2, 0, 0)">
    <g id="background-dbcd4655"/>
    <g id="background-images-dbcd4655"/>
    <g id="graphpaper-dbcd4655">
      <g id="axis-dbcd4655">
        <g>
          <g>
            <path fill="none" stroke="rgb(0,0,0)" class="dcg-svg-tickmark" paint-order="fill stroke markers" d="" stroke-opacity="0.9" stroke-miterlimit="2" stroke-width="1.5" stroke-dasharray=""/>
          </g>
        </g>
      </g>
    </g>
    <g id="expressions-dbcd4655">
      <g id="sketch-dbcd4655">
        <title>Expression 20</title>
        <path fill="#000000" stroke="none" class="dcg-svg-region" paint-order="stroke fill markers" d=" M 192.21209764938044 233.82787424784638 L 184.1005851327846 219.7783224428715 L 167.8775600995929 219.7783224428715 L 159.76604758299706 233.82787424784638 L 167.8775600995929 247.87742605282125 L 184.1005851327846 247.87742605282125 L 192.21209764938044 233.82787424784638" fill-opacity="0.4"/>
      </g>
      <g id="sketch-dbcd4655">
        <title>Expression 21</title>
        <path fill="#000000" stroke="none" class="dcg-svg-region" paint-order="stroke fill markers" d=" M 192.21209764938044 233.82787424784638 L 208.43512268257214 233.82787424784638 L 216.54663519916798 219.7783224428715 L 208.43512268257214 205.7287706378966 L 192.21209764938044 205.7287706378966 L 184.1005851327846 219.7783224428715 L 192.21209764938044 233.82787424784638" fill-opacity="0.4"/>
      </g>
      <g id="sketch-dbcd4655">
        <title>Expression 22</title>
        <path fill="#000000" stroke="none" class="dcg-svg-region" paint-order="stroke fill markers" d=" M 167.8775600995929 219.7783224428715 L 184.1005851327846 219.7783224428715 L 192.21209764938044 205.7287706378966 L 184.1005851327846 191.67921883292175 L 167.8775600995929 191.67921883292175 L 159.76604758299706 205.7287706378966 L 167.8775600995929 219.7783224428715" fill-opacity="0.4"/>
      </g>
      <g id="sketch-dbcd4655">
        <title>Expression 23</title>
        <path fill="#000000" stroke="none" class="dcg-svg-region" paint-order="stroke fill markers" d=" M 167.8775600995929 191.67921883292175 L 184.1005851327846 191.67921883292175 L 192.21209764938044 177.62966702794685 L 184.1005851327846 163.58011522297193 L 167.8775600995929 163.58011522297193 L 159.76604758299706 177.62966702794685 L 167.8775600995929 191.67921883292175" fill-opacity="0.4"/>
      </g>
      <g id="sketch-dbcd4655">
        <title>Expression 27</title>
        <path fill="#000000" stroke="none" class="dcg-svg-region" paint-order="stroke fill markers" d=" M 192.21209764938044 233.82787424784638 L 208.43512268257214 233.82787424784638 L 216.54663519916798 247.87742605282125 L 208.43512268257214 261.92697785779615 L 192.21209764938044 261.92697785779615 L 184.1005851327846 247.87742605282125 L 192.21209764938044 233.82787424784638" fill-opacity="0.4"/>
      </g>
    </g>
    <g id="labels-dbcd4655"/>
  </g>
</svg>''',
                  color: Colors.blue,
                ))
          ],
        ));
  }
}

class MyDelegate extends MultiChildLayoutDelegate {
  MyDelegate({this.position});

  final Offset? position;

  @override
  void performLayout(Size size) {
    // `size` is the size of the `CustomMultiChildLayout` itself.

    Size leadingSize = Size
        .zero; // If there is no widget with id `1`, the size will remain at zero.
    // Remember that `1` here can be any **id** - you specify them using LayoutId.
    if (hasChild(1)) {
      leadingSize = layoutChild(
        1, // The id once again.
        BoxConstraints.loose(
            size), // This just says that the child cannot be bigger than the whole layout.
      );
      // No need to position this child if we want to have it at Offset(0, 0).
    }

    if (hasChild(2)) {
      final secondSize = layoutChild(
        2,
        BoxConstraints(
          // This is exactly the same as above, but this can be anything you specify.
          // BoxConstraints.loose is a shortcut to this.
          maxWidth: size.width,
          maxHeight: size.height,
        ),
      );

      positionChild(
        2,
        Offset(
          leadingSize.width /
              10, // This will place child 2 to the right of child 1.
          14, // Centers the second child vertically.
        ),
      );
    }
  }

  @override
  bool shouldRelayout(MyDelegate oldDelegate) {
    return oldDelegate.position != position;
  }
}
