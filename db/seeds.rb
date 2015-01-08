# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create!([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create!(name: 'Emanuel', city: cities.first)
users = User.create!([{ username: 'big_booty_judy', email: 'anacondas@hottestmail.com', password_digest: BCrypt::Password.create('bigbootyjudy'), session_token: SecureRandom.urlsafe_base64, orientation: 'Straight', gender: 'Cis Woman', country: 'Djibouti', zip_code: '10012'},
  { username: 'clubcantevenhandle', email: 'merightnow@yahoo.com', password_digest: BCrypt::Password.create('clubcanteven'), session_token: SecureRandom.urlsafe_base64, orientation: 'Demisexual', gender: 'Pangender', country: 'Sudan', zip_code: '12939'},
  { username: 'tokenwhitegirl', email: 'starbucksiphoneuggs@icant.even', password_digest: BCrypt::Password.create('tokenwhitegirl'), session_token: SecureRandom.urlsafe_base64, orientation: 'Straight', gender: 'Cis Woman', country: 'United States of America', zip_code: '10012'}])

users.each do |prof|
  Profile.create!([{ user_id: prof.id }])
end

Question.create!([{ prompt: 'Do you believe that everything happens for a reason?'},
  { prompt: 'Do you like to be the center of attention?'},
  { prompt: 'How tall are you?'},
  { prompt: 'In terms of relationships, which of these is the most important to find?'},
  { prompt: 'Would you date someone who was only interested in a committed, long-term relationship?'},
  { prompt: 'Are you friends with mostly men or mostly women?'},
  { prompt: 'Not to be racist but which ethnicity do you find to be most attractive?'},
  { prompt: 'Do you keep your sexual exploits private?'},
  { prompt: 'Are you more likely to assume someone of the opposite sex is flirting with you or just being nice?'},
  { prompt: 'Are you scared of commitment?'},
  { prompt: 'If you were involved in a serious relationship, at which of the following points would you being looking for new potential partners?'},
  { prompt: 'If you took nude photos of your lover, would you give them the prints and negatives (or destroy them) if you broke up?'},
  { prompt: 'Suppose a close friend\'s partner is very attractive and thinks you\'re attractive, too. If you could enjoy a few hours of sex with them and your friend would never find out about it, would you do it?'},
  { prompt: 'How do you feel about germs?'},
  { prompt: 'Would you consider being part of a committed polyamorous relationship (i.e., three or ore people but no sex outside of the group)?'},
  { prompt: 'Your friends are:'},
  { prompt: 'What is your position on hunting?'},
  { prompt: 'Is it wrong to cultivate or manufacture illegal drugs?'},
  { prompt: 'Do you try to draw attention to your body by wearing seductive clothing?'},
  { prompt: 'Do you ever feel the need to pick at other people\'s blemishes?'}])

Answer.create!([{ question_id: 1, content: 'Yes'},
  { question_id: 1, content: 'No'},
  { question_id: 2, content: 'Yes, Always'},
  { question_id: 2, content: 'Yes, sometimes'},
  { question_id: 2, content: 'Not really, no'},
  { question_id: 2, content: 'Definitely not'},
  { question_id: 3, content: '5ft 3in (1.61m) or shorter'},
  { question_id: 3, content: '5ft 4in to 5ft 8n (1.62 to 1.74m)'},
  { question_id: 3, content: '5ft 9in to 6ft 1in (1.74 to 1.86m)'},
  { question_id: 3, content: '6ft 2in or taller (1.87m)'},
  { question_id: 4, content: 'Someone for whom you would do anything.'},
  { question_id: 4, content: 'Someone who turns you on.'},
  { question_id: 4, content: 'Someone you feel like you\'ve known forever.'},
  { question_id: 4, content: 'Someone with goals similar to yours.'},
  { question_id: 5, content: 'Yes'},
  { question_id: 5, content: 'No'},
  { question_id: 5, content: 'I\'m not sure'},
  { question_id: 6, content: 'Mostly men'},
  { question_id: 6, content: 'Mostly women'},
  { question_id: 6, content: 'It\'s pretty mixed'},
  { question_id: 7, content: 'White'},
  { question_id: 7, content: 'Black'},
  { question_id: 7, content: 'Latino'},
  { question_id: 7, content: 'Asian/Indian'},
  { question_id: 7, content: 'Igbo'},
  { question_id: 8, content: 'Yes, always.'},
  { question_id: 8, content: 'No, I\'m an open book.'},
  { question_id: 8, content: 'Sometimes.'},
  { question_id: 9, content: 'People constantly flirt with me.'},
  { question_id: 9, content: 'Being nice doesn\'t mean flirting.'},
  { question_id: 9, content: 'I\'m oblivious when it comes to interaction.'},
  { question_id: 10, content: 'Yes'},
  { question_id: 10, content: 'No'},
  { question_id: 10, content: 'I\'m not sure'},
  { question_id: 11, content: 'When the relationship was not going well.'},
  { question_id: 11, content: 'When I was certain the relationship was ending.'},
  { question_id: 11, content: 'After the relationship was formally terminated.'},
  { question_id: 11, content: 'All of the time.'},
  { question_id: 12, content: 'Yes'},
  { question_id: 12, content: 'No'},
  { question_id: 12, content: 'I\'m Not Sure'},
  { question_id: 13, content: 'Yes'},
  { question_id: 13, content: 'No'},
  { question_id: 13, content: 'Maybe'},
  { question_id: 14, content: 'Obsessed: I bleach anything I can\'t trust!'},
  { question_id: 14, content: 'Careful: I was my hands and cover my sneezes.'},
  { question_id: 14, content: 'Polite: I always wash up when someone\'s watching'},
  { question_id: 14, content: 'Unconcerned: I don\'t actively lick doorknobs.'},
  { question_id: 15, content: 'Yes, I like that type of polygamy.'},
  { question_id: 15, content: 'I could be convinced by the right people.'},
  { question_id: 15, content: 'I am commited to total monogamy.'},
  { question_id: 15, content: 'I have open relationships only.'},
  { question_id: 16, content: 'mostly guys'},
  { question_id: 16, content: 'mostly girls'},
  { question_id: 16, content: 'both guys and girls'},
  { question_id: 17, content: 'I approve of hunting for food and sport.'},
  { question_id: 17, content: 'I approve of hunting for food only.'},
  { question_id: 17, content: 'I do not approve of hunting at all.'},
  { question_id: 18, content: 'Yes, always'},
  { question_id: 18, content: 'No, never'},
  { question_id: 18, content: 'Sometimes'},
  { question_id: 19, content: 'Yes'},
  { question_id: 19, content: 'No'},
  { question_id: 20, content: 'Yes'},
  { question_id: 20, content: 'No'},])
