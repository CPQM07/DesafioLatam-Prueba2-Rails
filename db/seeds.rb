# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Task.create(
    [{
        title: 'Comer una empandada', img: 'http://chile.voyhoy.com/blog/wp-content/uploads/empanada-chilena-ok-840x440.jpg'},
        {title: 'Bailar una patita', img: 'http://www.chilenaup.cl/wp-content/uploads/2017/09/CUECA.jpg'},
        {title: 'Tomarse un terremoto', img: 'https://i.ytimg.com/vi/9DZSpFlzp3s/hqdefault.jpg'},
        {title: 'Jugar una pichanga', img: 'https://vcm.emol.com/wp-content/uploads/2017/07/Futbol-Pichanga.jpg'},
        {title: 'Ir a una fonda', img: 'https://www.24horas.cl/incoming/article268783.ece/ALTERNATES/w620h350/fondas.jpg'},
        {title: 'Encumbrar un volantín', img: 'https://upload.wikimedia.org/wikipedia/commons/7/71/VolatinBanderaChile.JPG'}
    ]
)