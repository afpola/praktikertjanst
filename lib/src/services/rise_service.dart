import 'dart:async';
import 'package:angular/angular.dart';
import '../models/resource.dart';
import '../models/resource_types.dart';
import '../models/rise.dart';
import '../services/resource_service.dart';

@Injectable()
class RiseService extends ResourceService<Rise> {
  @override
  Future<Map<String, Rise>> fetchAll() async {
    await new Future.delayed(const Duration(milliseconds: 1));

    data = {
      'Kvicksilver i naturen': new Rise()
        ..icon = 'pool'
        ..id = 'Kvicksilver i naturen'
        ..img_url = 'pics/mercury-2.jpeg'
        ..phrases['sv'] = (new Phrases()
          ..name = 'Kvicksilver i naturen'
          ..description =
              'Artikel om vad kvicksilver är och hur det påverkar naturen.'
          ..url = 'kvicksilver-i-naturen')
        ..phrases['en'] = (new Phrases()
          ..name = 'Mercury in nature'
          ..description =
              'Article about what mercury is and how it affects nature.'
          ..url = 'mercury-in-nature')
        ..type = ResourceType.rise
        ..url['sv'] =
            'https://hg-rid.eu/rise/kvicksilver-i-naturen/content/index.html'
        ..url['en'] =
            'https://hg-rid.eu/rise/mercury-in-nature/content/index.html',
      'Lagar och regler': new Rise()
        ..icon = 'gavel'
        ..id = 'Lagar och regler'
        ..img_url = 'pics/AdobeStock_187205779.jpeg'
        ..type = ResourceType.rise
        ..phrases['sv'] = (new Phrases()
          ..name = 'Lagar och regler'
          ..url = 'lagar-och-regler'
          ..description =
              'Artikel om de lagar och regler som styr hanteringen av amalgam.')
        ..phrases['en'] = (new Phrases()
          ..name = 'Laws and regulations'
          ..url = 'laws-and-regulations'
          ..description =
              'Article on the laws and regulations governing the management of amalgam.')
        ..type = ResourceType.rise
        ..url['sv'] =
            'https://hg-rid.eu/rise/lagar-och-regler/content/index.html'
        ..url['en'] =
            'https://hg-rid.eu/rise/rules-and-regulations/content/index.html',
      'Vad är vad på mottagningen?': new Rise()
        ..icon = 'gavel'
        ..id = 'Vad är vad på mottagningen? '
        ..img_url = 'pics/_DSC9800.jpg'
        ..type = ResourceType.rise
        ..phrases['sv'] = (new Phrases()
          ..name = 'Vad är vad på mottagningen?'
          ..url = 'vad-ar-vad-pa-mottagningen'
          ..description = 'Översikt av utrustning på mottagningen.')
        ..phrases['en'] = (new Phrases()
          ..name = 'What is what inside a dentist reception?'
          ..url = 'what-is-what-inside-a-dentist-reception'
          ..description = 'Overview of the dentist equipment.')
        ..type = ResourceType.rise
        ..url['sv'] =
            'https://hg-rid.eu/rise/vad-ar-vad-pa-mottagningen/content/index.html'
        ..url['en'] =
            'https://hg-rid.eu/rise/overview-over-equipment/content/index.html',
      'Tandvårdsteamets ansvar': new Rise()
        ..icon = 'gavel'
        ..id = 'Tandvårdsteamets ansvar '
        ..img_url = 'pics/_DSC9970.jpg'
        ..type = ResourceType.rise
        ..phrases['sv'] = (new Phrases()
          ..name = 'Tandvårdsteamets ansvar'
          ..url = 'tandvardsteamets-ansvar'
          ..description =
              'Här får du instruktioner om tandvårdsteamets ansvar.')
        ..phrases['en'] = (new Phrases()
          ..name = 'Dental care teams responsibility'
          ..url = 'dental-care-teams-responsibility'
          ..description =
              'Here you will find instructions on the dental care team'
              's responsibility.')
        ..type = ResourceType.rise
        ..url['sv'] =
            'https://hg-rid.eu/rise/tandvardsteamets-ansvar/content/index.html'
        ..url['en'] =
            'https://hg-rid.eu/rise/dental-care-teams-responsibility/content/index.html',
      'Dentalteknikerns ansvar': new Rise()
        ..icon = 'gavel'
        ..id = 'Dentalteknikerns ansvar'
        ..img_url = 'pics/_DSC0192.jpg'
        ..type = ResourceType.rise
        ..phrases['sv'] = (new Phrases()
          ..name = 'Dentalteknikerns ansvar'
          ..url = 'dentalteknikerns-ansvar'
          ..description =
              'Här får du instruktioner om dentalteknikerns ansvar.')
        ..phrases['en'] = (new Phrases()
          ..name = 'Dental technicians responsibility'
          ..url = 'dental-technicians-responsibility'
          ..description =
              'Here you will find instructions on the dental technicians responsibility.')
        ..type = ResourceType.rise
        ..url['sv'] =
            'https://hg-rid.eu/rise/dentalteknikerns-ansvar/content/index.html'
        ..url['en'] =
            'https://hg-rid.eu/rise/dental-technicians-responsibility/content/index.html',
      'Instruktioner för miljöserviceföretag': new Rise()
        ..icon = 'gavel'
        ..id = 'Instruktioner för miljöserviceföretag'
        ..img_url = 'pics/_DSC9853.jpg'
        ..type = ResourceType.rise
        ..phrases['sv'] = (new Phrases()
          ..name = 'Det här gör ett miljöserviceföretag'
          ..url = 'instruktioner-for-miljoserviceforetag'
          ..description =
              'Här får du instruktioner om miljöserviceföretagens ansvar.')
        ..phrases['en'] = (new Phrases()
          ..name = 'Instructions for environmental service companies'
          ..url = 'instructions-for-environmental-service-companies'
          ..description =
              'Here you will find instructions on environmental service companies responsibility.')
        ..type = ResourceType.rise
        ..url['sv'] =
            'https://hg-rid.eu/rise/instruktioner-for-miljoserviceforetag/content/index.html'
        ..url['en'] =
            'https://hg-rid.eu/rise/instructions-for-environmental-services-companies/content/index.html',
    };

    return data;
  }
}
