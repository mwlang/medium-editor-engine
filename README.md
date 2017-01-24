# Medium Editor Engine

This gem integrates [Medium Editor](https://github.com/yabwe/medium-editor) with Rails as an engine and makes adding
various medium plugins a snap.

A list of existing extensions and plugins, such as [Images and Media embeds](http://orthes.github.io/medium-editor-insert-plugin/), [Tables](https://github.com/yabwe/medium-editor-tables) and [Markdown](https://github.com/IonicaBizau/medium-editor-markdown) can be found [here](https://github.com/yabwe/medium-editor/wiki/Extensions-Plugins).

## Version

The latest version of Medium Editor bundled by this gem is [5.22.2](https://github.com/yabwe/medium-editor/releases)

## Installation

Include **medium-editor-rails** in your Rails project's Gemfile:

```ruby
gem 'medium-editor-engine'
```

And then execute:

```bash
bundle install
```

## Configuration

Include javascript file in **app/assets/javascripts/application.js**:

```javascript
//= require medium-editor
```

Include stylesheet file in **app/assets/stylesheets/application.css**:

```scss
*= require medium-editor/medium-editor
```

You can also include themes from **themes** folder, example:

```scss
*= require medium-editor/themes/flat
```

For more themes, visit: [Medium Editor Themes](https://github.com/yabwe/medium-editor/wiki/Themes)

## Using Medium Editor with Rails

You need to initialize Medium Editor with any selector of div, example:

```html
<div class="editable"></div>

<script>
  var editor = new MediumEditor('.editable', {
    // options go here
  });
</script>
```

For extra options, visit: [Medium Editor Options](https://github.com/yabwe/medium-editor#mediumeditor-options)

## Contributing

1. Fork it ( http://github.com/marjinal1st/medium-editor-rails/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
