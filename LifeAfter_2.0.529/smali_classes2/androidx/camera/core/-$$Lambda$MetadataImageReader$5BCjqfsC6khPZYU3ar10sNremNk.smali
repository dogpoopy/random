.class public final synthetic Landroidx/camera/core/-$$Lambda$MetadataImageReader$5BCjqfsC6khPZYU3ar10sNremNk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/MetadataImageReader;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/MetadataImageReader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/-$$Lambda$MetadataImageReader$5BCjqfsC6khPZYU3ar10sNremNk;->f$0:Landroidx/camera/core/MetadataImageReader;

    return-void
.end method


# virtual methods
.method public final onImageAvailable(Landroidx/camera/core/impl/ImageReaderProxy;)V
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/-$$Lambda$MetadataImageReader$5BCjqfsC6khPZYU3ar10sNremNk;->f$0:Landroidx/camera/core/MetadataImageReader;

    invoke-virtual {v0, p1}, Landroidx/camera/core/MetadataImageReader;->lambda$new$0$MetadataImageReader(Landroidx/camera/core/impl/ImageReaderProxy;)V

    return-void
.end method
