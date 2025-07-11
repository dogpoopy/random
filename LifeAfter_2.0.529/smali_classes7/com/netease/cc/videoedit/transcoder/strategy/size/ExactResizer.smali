.class public Lcom/netease/cc/videoedit/transcoder/strategy/size/ExactResizer;
.super Ljava/lang/Object;
.source "ExactResizer.java"

# interfaces
.implements Lcom/netease/cc/videoedit/transcoder/strategy/size/Resizer;


# instance fields
.field private final output:Lcom/netease/cc/videoedit/transcoder/strategy/size/Size;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/netease/cc/videoedit/transcoder/strategy/size/Size;

    invoke-direct {v0, p1, p2}, Lcom/netease/cc/videoedit/transcoder/strategy/size/Size;-><init>(II)V

    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/strategy/size/ExactResizer;->output:Lcom/netease/cc/videoedit/transcoder/strategy/size/Size;

    return-void
.end method

.method public constructor <init>(Lcom/netease/cc/videoedit/transcoder/strategy/size/Size;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/netease/cc/videoedit/transcoder/strategy/size/ExactResizer;->output:Lcom/netease/cc/videoedit/transcoder/strategy/size/Size;

    return-void
.end method


# virtual methods
.method public getOutputSize(Lcom/netease/cc/videoedit/transcoder/strategy/size/Size;)Lcom/netease/cc/videoedit/transcoder/strategy/size/Size;
    .locals 0

    .line 28
    iget-object p1, p0, Lcom/netease/cc/videoedit/transcoder/strategy/size/ExactResizer;->output:Lcom/netease/cc/videoedit/transcoder/strategy/size/Size;

    return-object p1
.end method
