.class public interface abstract Lcom/netease/cc/screen_record/codec/IRecordCallback;
.super Ljava/lang/Object;
.source "IRecordCallback.java"


# static fields
.field public static final ERROR_INVALID_PARAM:I = -0x3

.field public static final ERROR_IN_RECORDING:I = -0x6

.field public static final ERROR_PERMISSION_REJECT:I = -0x1

.field public static final ERROR_PERMISSION_SECURITY:I = -0x7

.field public static final ERROR_PROJECTION_NULL:I = -0x2

.field public static final ERROR_START_FOR_NOT_INIT:I = -0x4

.field public static final ERROR_STOP_FOR_NOT_START:I = -0x5


# virtual methods
.method public abstract onError(ILjava/lang/String;)V
.end method

.method public abstract onEvent(ILorg/json/JSONObject;)V
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method
