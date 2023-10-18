# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [discord.proto](#discord-proto)
    - [CreateRequest](#ecfmp_discord-CreateRequest)
    - [CreateResponse](#ecfmp_discord-CreateResponse)
    - [DiscordEmbeds](#ecfmp_discord-DiscordEmbeds)
    - [DiscordEmbedsFields](#ecfmp_discord-DiscordEmbedsFields)
    - [UpdateRequest](#ecfmp_discord-UpdateRequest)
    - [UpdateResponse](#ecfmp_discord-UpdateResponse)
  
    - [Discord](#ecfmp_discord-Discord)
  
- [Scalar Value Types](#scalar-value-types)



<a name="discord-proto"></a>
<p align="right"><a href="#top">Top</a></p>

## discord.proto



<a name="ecfmp_discord-CreateRequest"></a>

### CreateRequest
Request to create a new message on a specified channel.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| channel | [string](#string) |  | The discord channel id to create the message on. |
| content | [string](#string) |  | The content of the message. |
| embeds | [DiscordEmbeds](#ecfmp_discord-DiscordEmbeds) | repeated | The embeds to include in the message. |






<a name="ecfmp_discord-CreateResponse"></a>

### CreateResponse
Response from the create request. Contains the ID of the created message on
the discord service that can be used to update the message in the future.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  |  |






<a name="ecfmp_discord-DiscordEmbeds"></a>

### DiscordEmbeds
Embeds to include in a message.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| title | [string](#string) |  | The title of the embed. |
| description | [string](#string) |  | The description of the embed. |
| url | [string](#string) |  | The url to link to. |
| color | [int32](#int32) |  | The color of the embed. |
| fields | [DiscordEmbedsFields](#ecfmp_discord-DiscordEmbedsFields) | repeated | The fields of the embed. |






<a name="ecfmp_discord-DiscordEmbedsFields"></a>

### DiscordEmbedsFields



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | The name of the field. |
| value | [string](#string) |  | The value of the field. |
| inline | [bool](#bool) |  | Whether or not the field should be displayed inline. |






<a name="ecfmp_discord-UpdateRequest"></a>

### UpdateRequest
Request to update an existing message.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  |  |
| content | [string](#string) |  |  |
| embeds | [DiscordEmbeds](#ecfmp_discord-DiscordEmbeds) | repeated |  |






<a name="ecfmp_discord-UpdateResponse"></a>

### UpdateResponse
Response from the update request. Is empty.





 

 

 


<a name="ecfmp_discord-Discord"></a>

### Discord
API for interacting with the ECFMP discord service.

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| Create | [CreateRequest](#ecfmp_discord-CreateRequest) | [CreateResponse](#ecfmp_discord-CreateResponse) | Create a new message in the specified channel. |
| Update | [UpdateRequest](#ecfmp_discord-UpdateRequest) | [UpdateResponse](#ecfmp_discord-UpdateResponse) | Update an existing message. |

 



## Scalar Value Types

| .proto Type | Notes | C++ | Java | Python | Go | C# | PHP | Ruby |
| ----------- | ----- | --- | ---- | ------ | -- | -- | --- | ---- |
| <a name="double" /> double |  | double | double | float | float64 | double | float | Float |
| <a name="float" /> float |  | float | float | float | float32 | float | float | Float |
| <a name="int32" /> int32 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint32 instead. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="int64" /> int64 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint64 instead. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="uint32" /> uint32 | Uses variable-length encoding. | uint32 | int | int/long | uint32 | uint | integer | Bignum or Fixnum (as required) |
| <a name="uint64" /> uint64 | Uses variable-length encoding. | uint64 | long | int/long | uint64 | ulong | integer/string | Bignum or Fixnum (as required) |
| <a name="sint32" /> sint32 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int32s. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="sint64" /> sint64 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int64s. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="fixed32" /> fixed32 | Always four bytes. More efficient than uint32 if values are often greater than 2^28. | uint32 | int | int | uint32 | uint | integer | Bignum or Fixnum (as required) |
| <a name="fixed64" /> fixed64 | Always eight bytes. More efficient than uint64 if values are often greater than 2^56. | uint64 | long | int/long | uint64 | ulong | integer/string | Bignum |
| <a name="sfixed32" /> sfixed32 | Always four bytes. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="sfixed64" /> sfixed64 | Always eight bytes. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="bool" /> bool |  | bool | boolean | boolean | bool | bool | boolean | TrueClass/FalseClass |
| <a name="string" /> string | A string must always contain UTF-8 encoded or 7-bit ASCII text. | string | String | str/unicode | string | string | string | String (UTF-8) |
| <a name="bytes" /> bytes | May contain any arbitrary sequence of bytes. | string | ByteString | str | []byte | ByteString | string | String (ASCII-8BIT) |

