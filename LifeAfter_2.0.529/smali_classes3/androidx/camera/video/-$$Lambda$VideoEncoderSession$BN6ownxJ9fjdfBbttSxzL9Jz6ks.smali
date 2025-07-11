.class public final synthetic Landroidx/camera/video/-$$Lambda$VideoEncoderSession$BN6ownxJ9fjdfBbttSxzL9Jz6ks;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic f$0:Landroidx/camera/video/VideoEncoderSession;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/VideoEncoderSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/-$$Lambda$VideoEncoderSession$BN6ownxJ9fjdfBbttSxzL9Jz6ks;->f$0:Landroidx/camera/video/VideoEncoderSession;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/camera/video/-$$Lambda$VideoEncoderSession$BN6ownxJ9fjdfBbttSxzL9Jz6ks;->f$0:Landroidx/camera/video/VideoEncoderSession;

    check-cast p1, Landroidx/camera/core/SurfaceRequest$Result;

    invoke-static {v0, p1}, Landroidx/camera/video/VideoEncoderSession;->lambda$BN6ownxJ9fjdfBbttSxzL9Jz6ks(Landroidx/camera/video/VideoEncoderSession;Landroidx/camera/core/SurfaceRequest$Result;)V

    return-void
.end method
