.class public final synthetic Landroidx/camera/core/-$$Lambda$SafeCloseImageReaderProxy$zycm9fElMBko0VBGypZhA8l8cGU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/core/ForwardingImageProxy$OnImageCloseListener;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/SafeCloseImageReaderProxy;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/SafeCloseImageReaderProxy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/-$$Lambda$SafeCloseImageReaderProxy$zycm9fElMBko0VBGypZhA8l8cGU;->f$0:Landroidx/camera/core/SafeCloseImageReaderProxy;

    return-void
.end method


# virtual methods
.method public final onImageClose(Landroidx/camera/core/ImageProxy;)V
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/-$$Lambda$SafeCloseImageReaderProxy$zycm9fElMBko0VBGypZhA8l8cGU;->f$0:Landroidx/camera/core/SafeCloseImageReaderProxy;

    invoke-virtual {v0, p1}, Landroidx/camera/core/SafeCloseImageReaderProxy;->lambda$new$0$SafeCloseImageReaderProxy(Landroidx/camera/core/ImageProxy;)V

    return-void
.end method
