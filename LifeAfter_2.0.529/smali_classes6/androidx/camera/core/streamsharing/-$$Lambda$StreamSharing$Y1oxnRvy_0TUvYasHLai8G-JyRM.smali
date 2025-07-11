.class public final synthetic Landroidx/camera/core/streamsharing/-$$Lambda$StreamSharing$Y1oxnRvy_0TUvYasHLai8G-JyRM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/core/streamsharing/StreamSharing$Control;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/streamsharing/StreamSharing;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/streamsharing/StreamSharing;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/streamsharing/-$$Lambda$StreamSharing$Y1oxnRvy_0TUvYasHLai8G-JyRM;->f$0:Landroidx/camera/core/streamsharing/StreamSharing;

    return-void
.end method


# virtual methods
.method public final jpegSnapshot(II)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/streamsharing/-$$Lambda$StreamSharing$Y1oxnRvy_0TUvYasHLai8G-JyRM;->f$0:Landroidx/camera/core/streamsharing/StreamSharing;

    invoke-virtual {v0, p1, p2}, Landroidx/camera/core/streamsharing/StreamSharing;->lambda$new$0$StreamSharing(II)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
