.class public interface abstract Lcom/bytedance/sdk/open/tiktok/base/IMediaObject;
.super Ljava/lang/Object;
.source "IMediaObject.java"


# static fields
.field public static final TYPE_CONTACT_HTML:I = 0x5

.field public static final TYPE_CONTACT_IMAGE:I = 0x4

.field public static final TYPE_IMAGE:I = 0x2

.field public static final TYPE_TEXT:I = 0x1

.field public static final TYPE_UNKNOWN:I = 0x0

.field public static final TYPE_VIDEO:I = 0x3


# virtual methods
.method public abstract checkArgs()Z
.end method

.method public abstract serialize(Landroid/os/Bundle;)V
.end method

.method public abstract type()I
.end method

.method public abstract unserialize(Landroid/os/Bundle;)V
.end method
