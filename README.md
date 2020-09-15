# Connect Link 

Connect link is the API for integrating your fire panel (BMI) to thirdparty software.

Be sure to check out the [Wiki](https://github.com/hertekconnect/api/wiki) for more in depth documentation. 

Hi, and welcome to the Hertek Connect API project. 

_Note: we're in the process of writing this documentation. No rights can be derived from
this document; things will change without notice._

## What is Hertek Connect?

Hertek Connect is a digital safety platform linked to Penta fire panels, which enables you to monitor fire safety remotely.

The Hertek Connect platform consists of different applications, one of which is Connect Link. Connect Link is an API that allows you to programmatically interface with real-time data from your fire panel. 

## How do I get access?

Please get in touch with your sales representative if you're interested in using Connect Link. 

## Getting started

To get started _right now_ you can make use of a sample account on Hertek Connect. This will provide you with
realistic data while you develop your integration with Hertek Connect. 

TODO: Note sample key

## Safety concerns

Hertek Connect API provides you with real-time information about your fire panel. This does not impact the 
performance or effectiveness of your current fire panel setup.

TODO: Add a note about relation fire panel <-> Hertek Connect

Due to safety concerns, the Hertek Connect API does not provide the option to control your fire panel remotely. 
For this, we want to refer you to Hertek Connect Control for iOS / Android or Hertek Connect Support.

## API Specification

There are two parts to the API of Connect Link: 
TODO: add schematisch totaal overzicht (opmerking/behoefte van Rens Riksma)

### Rest API

We offer a REST API that provides you with specific installation, zone, and element information. With your
bearer token, you can retrieve information about API-enabled installations. You can connect to our
API end-points using a secure HTTPS connection. Responses are sent in JSON format. 

From a safety point of view, API tokens are valid only for a limited amount of time. You can use your Hertek
Connect account - when it has Connect API enabled - to request a token. This token can then be used to request 
data about installations, zones, and elements. 

Hertek Connect API supports the [OpenAPI 3.0 specification](https://swagger.io/specification/), which makes it 
straightforward to use and integrate with. You can [import](https://learning.postman.com/docs/integrations/available-integrations/working-with-openAPI/) this API specification in tools like [Postman](https://www.postman.com/) to experiment with it. Postman can also [generate code snippets](https://learning.postman.com/docs/sending-requests/generate-code-snippets/) for various programming languages.

The `examples/` directory also contains some illustrative code examples on how to use the API end points.

TODO: Link to OpenAPI docs and instruction on how to use the OpenAPI live documentation.

### Webhook notifications

In addition to a REST API to retrieve current installation status, we also offer webhook notifications. When elements
in your installation change to a non-normal status (e.g. a fire alarm or malfunction), you can be notified about 
this through a webhook. This allows you to respond to events in real-time.

You can read more about [Webhooks on the wiki](https://github.com/hertekconnect/api/wiki/Webhooks)

## Technical Support

If you have any further questions about the Hertek Connect API, feel free to get in touch.
