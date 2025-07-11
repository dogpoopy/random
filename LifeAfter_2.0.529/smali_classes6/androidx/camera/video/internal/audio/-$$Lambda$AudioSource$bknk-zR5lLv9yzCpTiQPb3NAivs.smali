.class public final synthetic Landroidx/camera/video/internal/audio/-$$Lambda$AudioSource$bknk-zR5lLv9yzCpTiQPb3NAivs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/video/internal/audio/AudioSource;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/internal/audio/AudioSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/internal/audio/-$$Lambda$AudioSource$bknk-zR5lLv9yzCpTiQPb3NAivs;->f$0:Landroidx/camera/video/internal/audio/AudioSource;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/camera/video/internal/audio/-$$Lambda$AudioSource$bknk-zR5lLv9yzCpTiQPb3NAivs;->f$0:Landroidx/camera/video/internal/audio/AudioSource;

    invoke-virtual {v0}, Landroidx/camera/video/internal/audio/AudioSource;->lambda$start$1$AudioSource()V

    return-void
.end method
