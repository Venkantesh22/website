import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Samay One-Solution',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Booking Services', style: TextStyle(color: Colors.black,
          fontSize: 40,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w900,
          height: 0.03,
          letterSpacing: -0.80,),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: [
                ServiceItem(
                  imageUrl: 'https://s3-alpha-sig.figma.com/img/0004/01d2/9815d69962c45876737947beb36345dd?Expires=1719792000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=IbmzF-3HmLWp~ncnhWx539~Rn4eEE5dOU05hN2mjMt6s3P3Bj179evgRoGDcH33nD-mtR1vzVWVPWstPf-A9kmk~8OMGZ4yPeok6mgN6J~ZR1se8nIgAOo2R5izh6TdE7nEhq~s7gO9aXIMQX64AmM6GuFF79WVws-86rftkJYHaIquD1UZ4xyhyvYSJU-sfU9pcXVpbVCDWCpvl95z4wTpZRJrekLJlv1T1Aa2dDmrLEvgQa8N83NeVQxpWpF0nj7O8rV-zI06Hg4hxo419XDe1F9fJDEc~vS9ReIj3QOSYn5nHnx~cq01JozqQ3ylOhh1fSUXR9d2eJ9CqVn0WNw__',
                  label: 'Saloon'
                ),
                ServiceItem(
                  imageUrl: 'https://s3-alpha-sig.figma.com/img/328d/af2f/54c0f9abffac6390c5e962a342e6a0a3?Expires=1719792000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=h-ixuyn1eVdGmaZ7orTrJj~ryHo7tJoyv9-7lO6pbumdV2MWlfD~X9vls2doTMaptL~1V20wEsmk~IXxZuEZ9513tcbF8a5-yEvdrsAllR1qMYETHelgPKcklQS7PhwYUCOxYJ7p8nlHBY8V6-MhqOwy0gNA4a4Xiod~f~SBfsJJi-I9sS1mzF0rww0BgtHWRg2dHn3KtW7PrrCRDZiHdTRok-GGYkmbVXLttsa8xSZWAR-Oklea~ZuWc2ZNSzt7ivD1PIjIooaGYFuOS5AIXC1zUBwBH~MQJu7auQO2qBI9ozjfj6hplLruWMefe2o6lkY5OEsO70okmLzrKXPn3A__',
                  label: 'Tatoo',
                ),
                ServiceItem(
                  imageUrl: 'https://s3-alpha-sig.figma.com/img/24a9/afa7/050ad9d5dddcb8b56b64744d2a8aeb18?Expires=1719792000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=ZQIpjUmX8VBn3GSggziozEZItoI-wm7uAccuvmLDub-PGC7o4tz1YKDoVq3UvzWOKnR6qwzyrAxYmrwuI0tJz~-pWLEJn0aBiu~hzLLBLS66FS93GafV-qHc~rZCO7Je5Ys0QwMXWtKcmEnRQuKqNkctb~9N6AzaR1ULjojrmA0SSlIwjQWgmi8FIw5pxm4x9UPdGMvkqBufYFieYuaDKsM05-VV9cll0bzdt7l4hCXsWHG1RW7ednqzu5FP6LU6iMpblpHeADbZAfk~-d8j-bMsol~W5rTVH6kllvck7hEqiubeGqVIMwYyziPktSXyNe5ihbAloVRWZTB21PsAVQ__',
                  label: 'Hotels',
                ),
                ServiceItem(
                  imageUrl: 'https://s3-alpha-sig.figma.com/img/4ae4/c1dc/22777344794c93770149d11bf25a0088?Expires=1719792000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=MBe2m5jbKMVDebS3c4DuaGjxaP91KG-DtjFR0KA5IL8myOzqaeDmVhlWwpZW8hBkwUDApUXbKxeXKoYYIY3LUPMugAOGmuiAELlccRMRwYUREqzughw3EHxnAJ8GqqK6BQLtbIRZatf2BNtY~vTUnpXkEKLq7jmMCIHZVqFmwXqJPDNImneaHUoG8jynOEO0e~Jzj1wyMWmqSd-HqzaiP9fbxm3pJoq-eq2VLBEypqygCK5nfSAQiSA7-q68sz4Rfv5cZYwxVyjHGPTwc9EYgwnUCHNA9HwIFD2ndxwuTPKhtMReESvq6-8pxJQ~WOfdfDJC~A6xVitXHw2sIUtvJA__',
                  label: 'Yoga',
                ),
                ServiceItem(
                  imageUrl: 'https://s3-alpha-sig.figma.com/img/f660/51ab/5497b3ecba61aeb5161848268b22ceac?Expires=1719792000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=HgY0qvejMEPVX-hV7WkETdNZA7iYX808zo0KarJuNz72BSrG~fUH6rHPG6Y0vOjK0lnWd6v6gU-gGGWZP2SklZHGSTf2jnvutZ5n11QQV7xjSNbskiptc4xQNDSHKv7FYd8RGhyxYI2lsKuDbcdzZIW3A8sIhffjZYf~hk7AaavitatZdeD2oW8K4wpQde6EibXX4FRXTJTy9ZOz0qMtKNoPm~-A3GozKmv~HoxznQmUoeO0EUTRVqCyvsHn9EGm8LLRUxh8KLSnbC-w4teY6qbjrOubCPLzZsDAqaXUcZXoOkYI-XGBsyjLY4CM73H03Ih1XdgdsTf5H-jEPD94-g__',
                  label: 'Doctor',
                ),
                ServiceItem(
                  imageUrl: 'https://s3-alpha-sig.figma.com/img/8e23/c32c/114437d1667abb9d12ddcaaa1172e9ed?Expires=1719792000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=c3MlR7tn3DeHVMiapnLUskON~NinPvD1K1X39IXTM5~YuAUBY~D0eMLO1fTA7DHRJuM0uG3u~E4jpc7w9tD8UrmqErUN4QffTlw3JfCGyqAmkGx1uXVHqwV22kn3tiIAAkkXo5IUgUq4AyA-xHn92ud8Aj8UmQKif-Yh-i3lJYnnpD0W4IquUUnawp1VtFp0ZRvgTy02WiTRJlTVnwWYnxnFhTJYvyW5hY3BNUIPWSXVyfXFB3Xco0Fkmuq96gPM79Jffs08k1BuYZQIWf~X0qPw29~JMOkdxmZC4VWZyZXRhX279rnoLD6M5LaQSTcYFg6tSPlT2~N58b~jbsOraw__',
                  label: 'Schools',
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Samay is an all-in-one super app designed to simplify the appointment booking process across various services, including doctors, salons, spas, gyms, yoga classes, job searches, tattoo artists, events, school appointments, hotels, and restaurants. Users can effortlessly schedule appointments, manage their booking history, and store medical records in one unified platform.',
                style: TextStyle(fontSize: 18, fontFamily: 'Poppins', fontWeight: FontWeight.w700,  ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ServiceItem extends StatelessWidget {
  final String imageUrl;
  final String label;

  ServiceItem({required this.imageUrl, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(color: Colors.black,
            fontSize: 32,
            fontFamily: 'Roboto Slab',
            fontWeight: FontWeight.w500,
            height: 0,),
        ),
      ],
    );
  }
}
