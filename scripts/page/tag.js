'use strict';

module.exports = function(locals) {
	var config = this.config;
  var tags = locals.tags;

	var tagDir = config.tag_dir;
	if (tagDir[tagDir.length - 1] !== '/') {
		tagDir += '/';
	}

	var pages = Array();
	pages.push({
		path: tagDir,
		layout: ['tag-index', 'tag', 'archive', 'index'],
		posts: locals.posts,
		data: {
			base: tagDir,
			total: 1,
			current: 1,
			current_url: tagDir,
			posts: locals.posts,
			prev: 0,
			prev_link: '',
			next: 0,
			next_link: '',
			tags: tags
		}
	});

  return pages;
};
