//
//  PantosValue.swift
//  mamba
//
//  Created by David Coufal on 7/11/16.
//  Copyright © 2016 Comcast Cable Communications Management, LLC
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

import Foundation

/// If a media sequence is not defined for a playlist, this is the default media sequence number that is implied.
public let defaultMediaSequence = 0

/// enum describing possible types of values can can be associated with a tag
public enum PantosValue: String {
    
    /// Found in `.Comment`. The text of a comment.
    case Comment_Text = "Comment_Text"
    
    /// Found in `.UnknownTag`. The name of the tag.
    case UnknownTag_Name = "UnknownTag_Name"
    
    /// Found in `.UnknownTag`. The data of the tag.
    case UnknownTag_Value = "UnknownTag_Value"
    
    /// Found in `.EXT_X_STREAM_INF` and `.EXT_X_I_FRAME_STREAM_INF`. A bandwidth value in bits per second.
    case bandwidthBPS = "BANDWIDTH"
    
    /// Found in `.EXT_X_STREAM_INF` and `.EXT_X_I_FRAME_STREAM_INF`. The program id of the stream.
    case programId = "PROGRAM-ID"
    
    /// Found in `.EXT_X_STREAM_INF` and `.EXT_X_I_FRAME_STREAM_INF`. Match a tag with a corresponding audio stream.
    case audioGroup = "AUDIO"
    
    /// Found in `.EXT_X_STREAM_INF` and `.EXT_X_I_FRAME_STREAM_INF`. Match a tag with a corresponding video stream.
    case videoGroup = "VIDEO"
    
    /// Found in `.EXT_X_STREAM_INF` and `.EXT_X_I_FRAME_STREAM_INF`. Comma delimited list of formats supported in the media file.
    case codecs = "CODECS"
    
    /// Found in `.EXT_X_STREAM_INF` and `.EXT_X_I_FRAME_STREAM_INF`. Horizonal by vertical pixel resolution of the media file, i.e. 1280x720
    case resolution = "RESOLUTION"
    
    /// Found in `.EXT_X_STREAM_INF`. Match a tag with a corresponding subtitles stream.
    case subtitlesGroup = "SUBTITLES"
    
    /// Found in `.EXT_X_STREAM_INF`. Match a tag with a corresponding closed-caption stream.
    case closedCaptionsGroup = "CLOSED-CAPTIONS"
    
    /// Found in `.EXT_X_TARGETDURATION`. A target duration in seconds.
    case targetDurationSeconds = "targetDurationSeconds"
    
    /// Found in `.EXT_X_MEDIA_SEQUENCE`. The sequence id of the first URI in the playlist.
    case sequence = "sequence"
    
    /// Found in `.EXT-X-ALLOW-CACHE`. Indicates whether the client MAY or MUST NOT cache downloaded media segments (YES or NO)
    case allowCache = "allowCache"
    
    /// Found in `.EXT_X_PROGRAM_DATE_TIME`. The date/time representation is ISO_8601 and SHOULD indicate a time zone
    case programDateTime = "programDateTIme"
    
    /// Found in `.EXT_X_MEDIA`. The type of the media (AUDIO, VIDEO, SUBTITLES and CLOSED-CAPTIONS are the choices)
    case type = "TYPE"
    
    /// Found in `.EXT_X_MEDIA`. Group id of this media stream
    case groupId = "GROUP-ID"
    
    /// Found in `.EXT_X_MEDIA`. Name of this media (typically a human-readable version of the language)
    case name = "NAME"
    
    /// Found in `.EXT_X_MEDIA`. The primary language of the media
    case language = "LANGUAGE"
    
    /// Found in `.EXT_X_MEDIA`. The associated language of the media
    case assocLanguage = "ASSOC-LANGUAGE"
    
    /// Found in `.EXT_X_MEDIA`. Is this media the default track? (YES or NO)
    case defaultMedia = "DEFAULT"
    
    /// Found in `.EXT_X_MEDIA`. Should we autoselect this track (YES or NO)
    case autoselect = "AUTOSELECT"
    
    /// Found in `.EXT_X_MEDIA`. Subtitle forced rendition condition (YES or NO)
    case forced = "FORCED"
    
    /// Found in `.EXT_X_MEDIA`. Indicates an individual characteristic of the subtitles rendition
    case characteristics = "CHARACTERISTICS"
    
    /// Found in `.EXT_X_MEDIA`. This attribute is REQUIRED if the TYPE attribute is CLOSED-CAPTIONS ("CC1", "CC2", "CC3", "CC4")
    case instreamId = "INSTREAM-ID"
    
    /// Found in `.EXT_X_MEDIA`, `.EXT_X_KEY`, `.EXT_X_MAP` and `.EXT_X_I_FRAME_STREAM_INF`. The URI location of the media
    case uri = "URI"
    
    /// Found in `.EXT_X_KEY`. The encryption method
    case method = "METHOD"
    
    /// Found in `.EXT_X_KEY`. Initialization Vector to be used with the key
    case ivector = "IV"
    
    /// Found in `.EXT_X_KEY`. Specifies how the key is represented in the resource identified by the URI
    case keyformat = "KEYFORMAT"
    
    /// Found in `.EXT_X_KEY`. Indicate which version(s) this instance complies with
    case keyformatVersions = "KEYFORMATVERSIONS"
    
    /// Found in `.EXT_X_VERSION`. The compatibility version of the Playlist file
    case version = "VERSION"
    
    /// Found in `.EXT_X_PLAYLIST_TYPE`. Mutability information about the Media Playlist file (EVENT or VOD)
    case playlistType = "PLAYLIST-TYPE"
    
    /// Found in `.EXT_X_BYTERANGE` and `.EXT_X_MAP`. Indicates that a Media Segment is a sub-range of the resource identified by its URI
    case byterange = "BYTERANGE"
    
    /// Found in `.EXT_X_DISCONTINUITY_SEQUENCE`. The discontinuity sequence number
    case discontinuitySequence = "DISCONTINUITYSEQUENCE"
    
    /// Found in `.EXT_X_START`. Indicates a time offset from the beginning or from the end of the last segment in the Playlist
    case startTimeOffset = "TIME-OFFSET"
    
    /// Found in `.EXT_X_START`. Indicates client SHOULD NOT render media samples in that segment whose presentation times are prior to the TIME-OFFSET (YES or NO)
    case precise = "PRECISE"
    
    /// Found in `.EXT_X_DATERANGE`.
    /// A quoted-string that uniquely identifies a Date Range in the
    /// Playlist.  This attribute is REQUIRED
    case id = "ID"
    
    /// Found in `.EXT_X_DATERANGE`.
    /// A client-defined quoted-string that specifies some set of
    /// attributes and their associated value semantics.  All Date Ranges
    /// with the same CLASS attribute value MUST adhere to these
    /// semantics.  This attribute is OPTIONAL.
    case classAttribute = "CLASS"

    /// Found in `.EXT_X_DATERANGE`.
    /// A quoted-string containing the [ISO_8601] date/time at which the
    /// Date Range begins.  This attribute is REQUIRED.
    case startDate = "START-DATE"

    /// Found in `.EXT_X_DATERANGE`.
    /// A quoted-string containing the [ISO_8601] date/time at which the
    /// Date Range ends.  It MUST be equal to or later than the value of
    /// the START-DATE attribute.  This attribute is OPTIONAL.
    case endDate = "END-DATE"

    /// Found in `.EXT_X_DATERANGE`.
    /// The duration of the Date Range expressed as a decimal-floating-
    /// point number of seconds.  It MUST NOT be negative.  A single
    /// instant in time (e.g., crossing a finish line) SHOULD be
    /// represented with a duration of 0.  This attribute is OPTIONAL.
    case duration = "DURATION"

    /// Found in `.EXT_X_DATERANGE`.
    /// The expected duration of the Date Range expressed as a decimal-
    /// floating-point number of seconds.  It MUST NOT be negative.  This
    /// attribute SHOULD be used to indicate the expected duration of a
    /// Date Range whose actual duration is not yet known.  It is
    /// OPTIONAL.
    case plannedDuration = "PLANNED-DURATION"

    /// Found in `.EXT_X_DATERANGE`.
    /// Used to carry SCTE-35 data.  These attributes are OPTIONAL.
    case scte35Cmd = "SCTE35-CMD"
    /// Found in `.EXT_X_DATERANGE`.
    /// Used to carry SCTE-35 data.  These attributes are OPTIONAL.
    case scte35Out = "SCTE35-OUT"
    /// Found in `.EXT_X_DATERANGE`.
    /// Used to carry SCTE-35 data.  These attributes are OPTIONAL.
    case scte35In = "SCTE35-IN"

    /// Found in `.EXT_X_DATERANGE`.
    /// An enumerated-string whose value MUST be YES.  This attribute
    /// indicates that the end of the range containing it is equal to the
    /// START-DATE of its Following Range.  The Following Range is the
    /// Date Range of the same CLASS that has the earliest START-DATE
    /// after the START-DATE of the range in question.  This attribute is
    /// OPTIONAL.
    case endOnNext = "END-ON-NEXT"
    
    /// Appendix D - Interstitials
    
    /// An Interstitial EXT-X-DATERANGE tag MUST have a CLASS attribute whose
    /// value is "com.apple.hls.interstitial".  This class defines the
    /// following attributes:
    
    /// The value of the X-ASSET-URI is a quoted-string absolute URI for a
    /// single interstitial asset.  An Interstitial EXT-X-DATERANGE tag
    /// MUST have either the X-ASSET-URI attribute or the X-ASSET-LIST
    /// attribute.  It MUST NOT have both.
    case xAssetUri = "X-ASSET-URI"

    /// The value of the X-ASSET-LIST is a quoted-string URI to a JSON
    /// object.
    ///
    /// The JSON object MUST contain a key/value pair whose key is
    /// "ASSETS" and whose value is a JSON array of Asset-Description JSON
    /// objects.  (Note that keys in a JSON object are case-sensitive.)
    ///
    /// Each Asset-Description JSON object MUST have a "URI" member whose
    /// value is a quoted-string absolute URI for a single interstitial
    /// asset, and a "DURATION" member whose value is a decimal-floating-
    /// point indicating the duration of the interstitial asset in
    /// seconds.
    /// The client SHOULD play the interstitial assets back-to-back in the
    /// order that they appear in the ASSETS array.
    case xAssetList = "X-ASSET-LIST"
    
    /// The value of X-RESUME-OFFSET is a decimal-floating-point of
    /// seconds that specifies where primary playback is to resume
    /// following the playback of the interstitial.  It is expressed as a
    /// time offset from where the interstitial playback was scheduled on
    /// the primary player timeline.  A typical value for X-RESUME-OFFSET
    /// is zero.  This attribute is OPTIONAL.
    ///
    /// If the X-RESUME-OFFSET is not present, its value is considered to
    /// be the duration of the interstitial.  This is appropriate for live
    /// content, where playback is to be kept at a constant delay from the
    /// live edge, or for VOD playback where the HLS interstitial is
    /// intended to exactly replace content in the primary asset.
    case xResumeOffset = "X-RESUME-OFFSET"
    
    /// The value of X-PLAYOUT-LIMIT is a decimal-floating-point of
    /// seconds that specifies a limit for the playout time of the entire
    /// interstitial.  If it is present, the client SHOULD end the
    /// interstitial if playback reaches that offset from its start.
    /// Otherwise the interstitial MUST end upon reaching the end of the
    /// interstitial asset(s).  This attribute is OPTIONAL.
    case xPlayoutLimit = "X-PLAYOUT-LIMIT"
    
    /// The value of the X-SNAP attribute is an enumerated-string-list of
    /// Snap Identifiers.  The defined Snap Identifiers are: OUT and IN.
    /// This attribute is OPTIONAL.
    ///
    /// If the list contains OUT then the client SHOULD locate the segment
    /// boundary closest to the START-DATE of the interstitial in the
    /// Media Playlist of the primary content and transition to the
    /// interstitial at that boundary.  If more than one Media Playlist is
    /// contributing to playback (audio plus video for example), the
    /// client SHOULD transition at the earliest segment boundary.
    ///
    /// If the list contains IN then the client SHOULD locate the segment
    /// boundary closest to the scheduled resumption point from the
    /// interstitial in the Media Playlist of the primary content and
    /// resume playback of primary content at that boundary.  If more than
    /// one Media Playlist is contributing to playback, the client SHOULD
    /// transition at the latest segment boundary.
    case xSnap = "X-SNAP"
    
    /// The value of the X-RESTRICT attribute is an enumerated-string-list
    /// of Navigation Restriction Identifiers.  The defined Navigation
    /// Restriction Identifiers are: SKIP and JUMP.  These restrictions
    /// are enforced at the player UI level.  This attribute is OPTIONAL.
    ///
    /// If the list contains SKIP then while the interstitial is being
    /// played, the client MUST NOT allow the user to seek forward from
    /// the current playhead position or set the rate to greater than the
    /// regular playback rate until playback reaches the end of the
    /// interstitial.
    ///
    /// If the list contains JUMP then the client MUST NOT allow the user
    /// to seek from a position in the primary asset earlier than the
    /// START-DATE attribute to a position after it without first playing
    /// the interstitial asset, even if the interstitial at START-DATE was
    /// played through earlier.  If the user attempts to seek across more
    /// than one interstitial, the client SHOULD choose at least one
    /// interstitial to play before allowing the seek to complete.
    case xRestrict = "X-RESTRICT"
}

extension PantosValue: HLSTagValueIdentifier {
    public func toString() -> String {
        return self.rawValue
    }
}

