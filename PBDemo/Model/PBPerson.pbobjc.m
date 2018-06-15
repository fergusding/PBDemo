// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: person.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers_RuntimeSupport.h>
#else
 #import "GPBProtocolBuffers_RuntimeSupport.h"
#endif

 #import "PBPerson.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - PBPersonRoot

@implementation PBPersonRoot

// No extensions in the file and no imports, so no need to generate
// +extensionRegistry.

@end

#pragma mark - PBPersonRoot_FileDescriptor

static GPBFileDescriptor *PBPersonRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@""
                                                 objcPrefix:@"PB"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - PBPerson

@implementation PBPerson

@dynamic name;
@dynamic age;
@dynamic gender;
@dynamic birthday;
@dynamic country;

typedef struct PBPerson__storage_ {
  uint32_t _has_storage_[1];
  int32_t age;
  PBPerson_Gender gender;
  NSString *name;
  NSString *birthday;
  NSString *country;
} PBPerson__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "name",
        .dataTypeSpecific.className = NULL,
        .number = PBPerson_FieldNumber_Name,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(PBPerson__storage_, name),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "age",
        .dataTypeSpecific.className = NULL,
        .number = PBPerson_FieldNumber_Age,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(PBPerson__storage_, age),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "gender",
        .dataTypeSpecific.enumDescFunc = PBPerson_Gender_EnumDescriptor,
        .number = PBPerson_FieldNumber_Gender,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(PBPerson__storage_, gender),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "birthday",
        .dataTypeSpecific.className = NULL,
        .number = PBPerson_FieldNumber_Birthday,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(PBPerson__storage_, birthday),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "country",
        .dataTypeSpecific.className = NULL,
        .number = PBPerson_FieldNumber_Country,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(PBPerson__storage_, country),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[PBPerson class]
                                     rootClass:[PBPersonRoot class]
                                          file:PBPersonRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(PBPerson__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t PBPerson_Gender_RawValue(PBPerson *message) {
  GPBDescriptor *descriptor = [PBPerson descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:PBPerson_FieldNumber_Gender];
  return GPBGetMessageInt32Field(message, field);
}

void SetPBPerson_Gender_RawValue(PBPerson *message, int32_t value) {
  GPBDescriptor *descriptor = [PBPerson descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:PBPerson_FieldNumber_Gender];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - Enum PBPerson_Gender

GPBEnumDescriptor *PBPerson_Gender_EnumDescriptor(void) {
  static GPBEnumDescriptor *descriptor = NULL;
  if (!descriptor) {
    static const char *valueNames =
        "Male\000Female\000";
    static const int32_t values[] = {
        PBPerson_Gender_Male,
        PBPerson_Gender_Female,
    };
    static const char *extraTextFormatInfo = "\002\000\004\000\001\006\000";
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(PBPerson_Gender)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:PBPerson_Gender_IsValidValue
                              extraTextFormatInfo:extraTextFormatInfo];
    if (!OSAtomicCompareAndSwapPtrBarrier(nil, worker, (void * volatile *)&descriptor)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL PBPerson_Gender_IsValidValue(int32_t value__) {
  switch (value__) {
    case PBPerson_Gender_Male:
    case PBPerson_Gender_Female:
      return YES;
    default:
      return NO;
  }
}


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)