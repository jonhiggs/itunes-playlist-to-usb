RSpec.describe PL2USB::Track do
  context "mp3" do
    track = PL2USB::Track.new(Plist::parse_xml(PLAYLIST_XML)["Tracks"]["2261"])

    it "should have correct id" do
      expect(track.id).to eql 2261
    end

    it "should have correct name" do
      expect(track.name).to eql "Test1 Title"
    end

    it "should have correct artist" do
      expect(track.artist).to eql "Test1 Artist"
    end

    it "should have correct album" do
      expect(track.album).to eql "Test1 Album"
    end

    it "should have correct genre" do
      expect(track.genre).to eql "Test1 Genre"
    end

    it "should have correct length" do
      expect(track.length).to eql 12
    end

    it "should have correct track_number" do
      expect(track.track_number).to eql "01"
    end

    it "should have correct year" do
      expect(track.year).to eql 2015
    end

    it "should have correct artwork_count" do
      expect(track.artwork_count).to eql 1
    end

    it "should have a PL2USB::File object as source" do
      expect(track.source).to be_a_kind_of PL2USB::File
    end

    it "should have correct source path" do
      expect(track.source.path).to eql "/Users/jonhiggs/Repos/itunes-playlist-to-usb/spec/test_files/test1.mp3"
    end

    it "should have a PL2USB::File object as destination" do
      expect(track.destination).to be_a_kind_of PL2USB::File
    end

    it "should have correct destination path" do
      expect(track.destination.path).to eql "/tmp/test1_artist/[2015] test1_album/01-test1_title.mp3"
    end

    it "should not convert" do
      expect(track.convert?).to be false
    end
  end

  context "alac" do
    track = PL2USB::Track.new(Plist::parse_xml(PLAYLIST_XML)["Tracks"]["14605"])

    it "should have correct id" do
      expect(track.id).to eql 14605
    end

    it "should have correct name" do
      expect(track.name).to eql "Test2 Title"
    end

    it "should have correct artist" do
      expect(track.artist).to eql "Test2 Artist"
    end

    it "should have correct album" do
      expect(track.album).to eql "Test2 Album"
    end

    it "should have correct genre" do
      expect(track.genre).to eql "Test2 Genre"
    end

    it "should have correct length" do
      expect(track.length).to eql 11
    end

    it "should have correct track_number" do
      expect(track.track_number).to eql "02"
    end

    it "should have correct year" do
      expect(track.year).to eql 2009
    end

    it "should have correct artwork_count" do
      expect(track.artwork_count).to eql 1
    end

    it "should have a PL2USB::File object as source" do
      expect(track.source).to be_a_kind_of PL2USB::File
    end

    it "should have correct source path" do
      expect(track.source.path).to eql "/Users/jonhiggs/Repos/itunes-playlist-to-usb/spec/test_files/test2.m4a"
    end

    it "should have a PL2USB::File object as destination" do
      expect(track.destination).to be_a_kind_of PL2USB::File
    end

    it "should have correct destination path" do
      expect(track.destination.path).to eql "/tmp/test2_artist/[2009] test2_album/02-test2_title.mp3"
    end

    it "should convert" do
      expect(track.convert?).to be true
    end
  end

  context "aac" do
    track = PL2USB::Track.new(Plist::parse_xml(PLAYLIST_XML)["Tracks"]["6087"])

    it "should have correct id" do
      expect(track.id).to eql 6087
    end

    it "should have correct name" do
      expect(track.name).to eql "Test3 Title"
    end

    it "should have correct artist" do
      expect(track.artist).to eql "Test3 Artist"
    end

    it "should have correct album" do
      expect(track.album).to eql "Test3 Album"
    end

    it "should have correct genre" do
      expect(track.genre).to eql "Test3 Genre"
    end

    it "should have correct length" do
      expect(track.length).to eql 189866
    end

    it "should have correct track_number" do
      expect(track.track_number).to eql "01"
    end

    it "should have correct year" do
      expect(track.year).to eql 1929
    end

    it "should have correct artwork_count" do
      expect(track.artwork_count).to eql 1
    end

    it "should have a PL2USB::File object as source" do
      expect(track.source).to be_a_kind_of PL2USB::File
    end

    it "should have correct source path" do
      expect(track.source.path).to eql "/Users/jonhiggs/Repos/itunes-playlist-to-usb/spec/test_files/test3.m4a"
    end

    it "should have a PL2USB::File object as destination" do
      expect(track.destination).to be_a_kind_of PL2USB::File
    end

    it "should have correct destination path" do
      expect(track.destination.path).to eql "/tmp/test3_artist/[1929] test3_album/01-test3_title.m4a"
    end

    it "should not convert" do
      expect(track.convert?).to be false
    end


  end

end
