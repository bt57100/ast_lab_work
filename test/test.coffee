# Test http responses status

supertest = require "supertest"
should = require 'should'

# This agent refers to PORT where program is runninng.
server = supertest.agent "http://localhost:8888"

# Test begin
describe "Routing", () ->
  it "should return index", (done) ->
    # calling index
    server
      .get "/"
      .end (err,res) ->
        done(err) if err
        res.status.should.equals 200
        done()
        return
    return


  it "should return 404", (done) ->
    # calling inexistant page
    server
      .get "/pageNotFound"
      .end (err,res) ->
        done(err) if err
        res.status.should.equals 404
        done()
        return
    return
