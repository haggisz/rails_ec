// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import '@hotwired/turbo-rails'
import jquery from 'jquery'
import { FetchRequest } from '@rails/request.js'
window.$ = jquery

async myMethod () {
  const request = new FetchRequest('post', 'localhost:3000/posts', {
    body: JSON.stringify({ name: 'Request.JS' })
  })
  const response = await request.perform()
  if (response.ok) {
    const body = await response.text
  }
}
