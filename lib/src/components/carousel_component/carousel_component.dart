import 'dart:core';
import 'package:angular/angular.dart';
import 'package:angular/security.dart';
import 'package:fo_components/fo_components.dart';
import 'package:intl/intl.dart';
import '../../models/video.dart';
import '../../services/video_service.dart';
import '../carousel_slide_section_component/carousel_slide_section_component.dart';

@Component(
    selector: 'p-carousel',
    templateUrl: 'carousel_component.html',
    styleUrls: const [
      'carousel_component.css'
    ],
    providers: const [
      VideoService
    ],
    directives: const [
      CarouselSlideSectionComponent,
      FoCarouselComponent,
      FoCarouselSlideComponent,
      FoModalComponent,
      NgFor,
      NgIf
    ],
    pipes: const [
      NamePipe
    ])
class CarouselComponent implements OnInit {
  CarouselComponent(this.sanitizer, this.videoService);

  @override
  void ngOnInit() async {
  
    loaded = false;
    videos = new List<Video>.from(await videoService.getAll());

    while (videos.isNotEmpty) {
      videoTable.add(videos.take(3).toList(growable: false));
      videoTable.last.forEach(videos.remove);
    }
    loaded = true;
  }

  void onVideoClick(Video video) {
    selectedModel = video;
    print("hej");
    print(selectedModel);
  }

  bool loaded = false;
  Video selectedModel;

  String get good_examples =>
      Intl.message('good examples', name: 'good_examples');

  final List<List<Video>> videoTable = [];
  final VideoService videoService;
  final DomSanitizationService sanitizer;
  List<Video> videos = [];
}
