// 文章数据 
class Post {
  // 构造方法   dart 里面这个 this.xx 可以直接复制
  Post({
    this.title,
    this.author,
    this.imageUrl,
    this.description,
  });

  final String title;
  final String author;
  final String imageUrl;
  final String description;
  
  bool selected = false;
}


final List<Post> posts = [
  // 其实dart 中这里new 可以省略
  new Post(
    title: 'Candy Shop',
    author: 'Mohamed Chahin',
    description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',
    imageUrl: 'https://resources.ninghao.org/images/candy-shop.jpg',
  ),
  new Post(
    title: 'Childhood in a picture',
    author: 'Mohamed Chahin',
    description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',    
    imageUrl: 'https://resources.ninghao.org/images/childhood-in-a-picture.jpg',
  ),
  new Post(
    title: 'Contained',
    author: 'Mohamed Chahin',
    description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',    
    imageUrl: 'https://resources.ninghao.org/images/contained.jpg',
  ),
  new Post(
    title: 'Dragon',
    author: 'Mohamed Chahin',
    description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',    
    imageUrl: 'https://resources.ninghao.org/images/dragon.jpg',
  ),
  new Post(
    title: 'Free Hugs',
    author: 'Mohamed Chahin',
    description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',    
    imageUrl: 'https://resources.ninghao.org/images/free_hugs.jpg',
  ),
  new Post(
    title: 'Gravity Falls',
    author: 'Mohamed Chahin',
    description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',    
    imageUrl: 'https://resources.ninghao.org/images/gravity-falls.png',
  ),
  new Post(
    title: 'Icecream Truck',
    author: 'Mohamed Chahin',
    description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',    
    imageUrl: 'https://resources.ninghao.org/images/icecreamtruck.png',
  ),
  new Post(
    title: 'keyclack',
    author: 'Mohamed Chahin',
    description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',    
    imageUrl: 'https://resources.ninghao.org/images/keyclack.jpg',
  ),
  new Post(
    title: 'Overkill',
    author: 'Mohamed Chahin',
    description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',    
    imageUrl: 'https://resources.ninghao.org/images/overkill.png',
  ),
  new Post(
    title: 'Say Hello to Barry',
    author: 'Mohamed Chahin',
    description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',    
    imageUrl: 'https://resources.ninghao.org/images/say-hello-to-barry.jpg',
  ),
  new Post(
    title: 'Space Skull',
    author: 'Mohamed Chahin',
    description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',    
    imageUrl: 'https://resources.ninghao.org/images/space-skull.jpg',
  ),
  new Post(
    title: 'The Old Fashioned',
    author: 'Mohamed Chahin',
    description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',    
    imageUrl: 'https://resources.ninghao.org/images/the-old-fashioned.png',
  ),
  new Post(
    title: 'Tornado',
    author: 'Mohamed Chahin',
    description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',    
    imageUrl: 'https://resources.ninghao.org/images/tornado.jpg',
  ),
  new Post(
    title: 'Undo',
    author: 'Mohamed Chahin',
    description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',    
    imageUrl: 'https://resources.ninghao.org/images/undo.jpg',
  ),
  new Post(
    title: 'White Dragon',
    author: 'Mohamed Chahin',
    description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',    
    imageUrl: 'https://resources.ninghao.org/images/white-dragon.jpg',
  )
];