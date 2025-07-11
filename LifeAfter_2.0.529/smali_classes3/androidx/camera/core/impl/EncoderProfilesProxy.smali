.class public interface abstract Landroidx/camera/core/impl/EncoderProfilesProxy;
.super Ljava/lang/Object;
.source "EncoderProfilesProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;,
        Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;,
        Landroidx/camera/core/impl/EncoderProfilesProxy$ImmutableEncoderProfilesProxy;
    }
.end annotation


# static fields
.field public static final CODEC_PROFILE_NONE:I = -0x1


# virtual methods
.method public abstract getAudioProfiles()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDefaultDurationSeconds()I
.end method

.method public abstract getRecommendedFileFormat()I
.end method

.method public abstract getVideoProfiles()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;",
            ">;"
        }
    .end annotation
.end method
