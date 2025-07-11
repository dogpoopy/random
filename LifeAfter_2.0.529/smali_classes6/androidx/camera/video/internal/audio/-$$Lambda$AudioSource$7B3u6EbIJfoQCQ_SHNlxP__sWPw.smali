.class public final synthetic Landroidx/camera/video/internal/audio/-$$Lambda$AudioSource$7B3u6EbIJfoQCQ_SHNlxP__sWPw;
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

    iput-object p1, p0, Landroidx/camera/video/internal/audio/-$$Lambda$AudioSource$7B3u6EbIJfoQCQ_SHNlxP__sWPw;->f$0:Landroidx/camera/video/internal/audio/AudioSource;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/camera/video/internal/audio/-$$Lambda$AudioSource$7B3u6EbIJfoQCQ_SHNlxP__sWPw;->f$0:Landroidx/camera/video/internal/audio/AudioSource;

    invoke-virtual {v0}, Landroidx/camera/video/internal/audio/AudioSource;->lambda$stop$3$AudioSource()V

    return-void
.end method
