.class public final synthetic Landroidx/camera/video/-$$Lambda$Recorder$Bw9t_4gjRjLpqhV2xkUmjphtLrc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic f$0:Landroidx/camera/video/Recorder;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/Recorder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/-$$Lambda$Recorder$Bw9t_4gjRjLpqhV2xkUmjphtLrc;->f$0:Landroidx/camera/video/Recorder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/camera/video/-$$Lambda$Recorder$Bw9t_4gjRjLpqhV2xkUmjphtLrc;->f$0:Landroidx/camera/video/Recorder;

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroidx/camera/video/Recorder;->lambda$setupAndStartMediaMuxer$10$Recorder(Landroid/net/Uri;)V

    return-void
.end method
