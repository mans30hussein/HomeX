import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:home_x/core/util/app_assets.dart';

class SVGImges {
  final Widget lampaOn = SvgPicture.asset(
    Assets.assetsImagesLampaOn,
    fit: BoxFit.fill,
  );
  final Widget lampaOff = SvgPicture.asset(
    Assets.assetsImagesLampOff,
    fit: BoxFit.fill,
  );
  final Widget blueWaves = SvgPicture.asset(
    Assets.assetsImagesBlueWaves,
  );
  final Widget blueWaves2 = SvgPicture.asset(
    Assets.assetsImagesBlueWaves2,
  );
  final Widget purpleWaves = SvgPicture.asset(
    Assets.assetsImagesPurpleWaves,
  );
  final Widget fanOn = SvgPicture.asset(
    Assets.assetsImagesFanOn,
  );
  final Widget fanOff = SvgPicture.asset(
    Assets.assetsImagesFanOff,
  );
  final Widget bedLightOn = SvgPicture.asset(
    Assets.assetsImagesOfficLapaOn,
  );
  final Widget bedLightOff = SvgPicture.asset(
    Assets.assetsImagesBedLapamOff,
  );
  final Widget babyLampaOn = SvgPicture.asset(
    Assets.assetsImagesBabyLampaOn,
  );
  final Widget babyLampaOff = SvgPicture.asset(
    Assets.assetsImagesBabyLampaOff,
  );
  final Widget officLampaOn = SvgPicture.asset(
    Assets.assetsImagesOfficLapaOn,
  );
  final Widget officLampaOff = SvgPicture.asset(
    Assets.assetsImagesOfficeLampaOff,
  );

  final Widget temp = SvgPicture.asset(
    Assets.assetsImagesHeatTheromstat,
  );
  final Widget tempEllipse = SvgPicture.asset(
    Assets.assetsImagesTempEllipse,
  );
  final Widget plant = SvgPicture.asset(
    Assets.assetsImagesPlant,
  );
  final Widget plantEllipse = SvgPicture.asset(
    Assets.assetsImagesPlantEllipse,
  );
  final Widget bazer = SvgPicture.asset(
    Assets.assetsImagesBazer,
  );
  final Widget gasEllipse = SvgPicture.asset(
    Assets.assetsImagesGasEllipse,
  );
}
