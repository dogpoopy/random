.class public Lcom/netease/cc/videoedit/transcoder/validator/DefaultValidator;
.super Ljava/lang/Object;
.source "DefaultValidator.java"

# interfaces
.implements Lcom/netease/cc/videoedit/transcoder/validator/Validator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public validate(Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;)Z
    .locals 2

    .line 15
    sget-object v0, Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;->COMPRESSING:Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;->COMPRESSING:Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    sget-object v0, Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;->REMOVING:Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;

    if-eq p1, v0, :cond_2

    sget-object p1, Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;->REMOVING:Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;

    if-ne p2, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    return v1
.end method
