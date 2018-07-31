#include <catch2/catch.hpp>
#include "sub-module/SubModule.h"

SCENARIO( "SubModule can have content", "[SubModule]" ) {

  GIVEN( "A SubModule instance" ) {
    SubModule foo;

    WHEN( "the object is initialized" ) {
      THEN( "it should have content" ) {
        REQUIRE( foo.hasContent() );
      }
      THEN( "its content should default to 'Foo'" ) {
        REQUIRE( foo.getContent() == "Foo" );
      }
    }

    WHEN( "the content is set" ) {
      foo.setContent("bar");

      THEN( "the content should be updated" ) {
        REQUIRE( foo.getContent() == "bar" );
      }
    }

    WHEN( "the content is reset" ) {
      foo.setContent("");

      THEN( "it should not have content" ) {
        REQUIRE( foo.hasContent() == false );
      }
      THEN( "the content should be empty" ) {
        REQUIRE( foo.getContent() == "" );
      }
    }
  }
}
