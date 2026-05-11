import 'package:flutter/material.dart';

void main() {
  runApp(const FindMyBandApp());
}

class FindMyBandApp extends StatelessWidget {
  const FindMyBandApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FindMyBand',
      theme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF07070A),
      appBar: AppBar(
        title: const Text('FindMyBand'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 520),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.music_note,
                  size: 88,
                  color: Color(0xFF7C3AED),
                ),

                const SizedBox(height: 24),

                const Text(
                  'FindMyBand',
                  style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 12),

                const Text(
                  'Find musicians. Build bands. Anywhere.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white70,
                  ),
                ),

                const SizedBox(height: 40),

                SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.search),
                    label: const Text('Find Musicians'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF7C3AED),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FindMusiciansPage(),
                        ),
                      );
                    },
                  ),
                ),

                const SizedBox(height: 16),

                SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.add_circle_outline),
                    label: const Text('Post a Project'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF9333EA),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PostProjectPage(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FindMusiciansPage extends StatelessWidget {
  const FindMusiciansPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Find Musicians'),
        backgroundColor: Colors.deepPurple,
      ),
      body: const Center(
        child: Text(
          'Musician discovery coming soon 🎸',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class PostProjectPage extends StatefulWidget {
  const PostProjectPage({super.key});

  @override
  State<PostProjectPage> createState() => _PostProjectPageState();
}

class _PostProjectPageState extends State<PostProjectPage> {
  String projectType = 'Remote';
  String genre = 'Shoegaze';
  String lookingFor = 'Drummer';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF07070A),
      appBar: AppBar(
        title: const Text('Post a Project'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 560),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Start a music project',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Tell musicians what you are looking for.',
                  style: TextStyle(color: Colors.white70),
                ),
                const SizedBox(height: 28),

                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Project title',
                    hintText: 'e.g. Doomgaze band looking for drummer',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),

                DropdownButtonFormField<String>(
                  value: lookingFor,
                  decoration: const InputDecoration(
                    labelText: 'Looking for',
                    border: OutlineInputBorder(),
                  ),
                  items: const [
                    DropdownMenuItem(value: 'Drummer', child: Text('Drummer')),
                    DropdownMenuItem(value: 'Guitarist', child: Text('Guitarist')),
                    DropdownMenuItem(value: 'Bassist', child: Text('Bassist')),
                    DropdownMenuItem(value: 'Vocalist', child: Text('Vocalist')),
                    DropdownMenuItem(value: 'Producer', child: Text('Producer')),
                    DropdownMenuItem(value: 'Keyboardist', child: Text('Keyboardist')),
                  ],
                  onChanged: (value) {
                    setState(() => lookingFor = value!);
                  },
                ),
                const SizedBox(height: 16),

                DropdownButtonFormField<String>(
                  value: genre,
                  decoration: const InputDecoration(
                    labelText: 'Genre',
                    border: OutlineInputBorder(),
                  ),
                  items: const [
                    DropdownMenuItem(value: 'Shoegaze', child: Text('Shoegaze')),
                    DropdownMenuItem(value: 'Doomgaze', child: Text('Doomgaze')),
                    DropdownMenuItem(value: 'Post-Rock', child: Text('Post-Rock')),
                    DropdownMenuItem(value: 'Metal', child: Text('Metal')),
                    DropdownMenuItem(value: 'Indie', child: Text('Indie')),
                    DropdownMenuItem(value: 'Electronic', child: Text('Electronic')),
                  ],
                  onChanged: (value) {
                    setState(() => genre = value!);
                  },
                ),
                const SizedBox(height: 16),

                DropdownButtonFormField<String>(
                  value: projectType,
                  decoration: const InputDecoration(
                    labelText: 'Collaboration type',
                    border: OutlineInputBorder(),
                  ),
                  items: const [
                    DropdownMenuItem(value: 'Local', child: Text('Local')),
                    DropdownMenuItem(value: 'Regional', child: Text('Regional')),
                    DropdownMenuItem(value: 'Remote', child: Text('Remote worldwide')),
                  ],
                  onChanged: (value) {
                    setState(() => projectType = value!);
                  },
                ),
                const SizedBox(height: 16),

                const TextField(
                  maxLines: 4,
                  decoration: InputDecoration(
                    labelText: 'Description',
                    hintText: 'Describe your sound, influences, goals, and what kind of musician you need.',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 24),

                SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.rocket_launch),
                    label: const Text(
                      'Publish Project',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF7C3AED),
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Project saved locally for prototype.'),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}