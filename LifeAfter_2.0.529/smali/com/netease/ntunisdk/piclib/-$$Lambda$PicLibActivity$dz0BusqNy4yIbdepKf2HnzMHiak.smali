.class public final synthetic Lcom/netease/ntunisdk/piclib/-$$Lambda$PicLibActivity$dz0BusqNy4yIbdepKf2HnzMHiak;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/netease/ntunisdk/piclib/loader/ScaleImageLoadTask$OnScaleCallbackListener;


# instance fields
.field public final synthetic f$0:Lcom/netease/ntunisdk/piclib/PicLibActivity;

.field public final synthetic f$1:[Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

.field public final synthetic f$2:[Z


# direct methods
.method public synthetic constructor <init>(Lcom/netease/ntunisdk/piclib/PicLibActivity;[Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;[Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/-$$Lambda$PicLibActivity$dz0BusqNy4yIbdepKf2HnzMHiak;->f$0:Lcom/netease/ntunisdk/piclib/PicLibActivity;

    iput-object p2, p0, Lcom/netease/ntunisdk/piclib/-$$Lambda$PicLibActivity$dz0BusqNy4yIbdepKf2HnzMHiak;->f$1:[Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iput-object p3, p0, Lcom/netease/ntunisdk/piclib/-$$Lambda$PicLibActivity$dz0BusqNy4yIbdepKf2HnzMHiak;->f$2:[Z

    return-void
.end method


# virtual methods
.method public final onCallback(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;J)V
    .locals 6

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/-$$Lambda$PicLibActivity$dz0BusqNy4yIbdepKf2HnzMHiak;->f$0:Lcom/netease/ntunisdk/piclib/PicLibActivity;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/-$$Lambda$PicLibActivity$dz0BusqNy4yIbdepKf2HnzMHiak;->f$1:[Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/-$$Lambda$PicLibActivity$dz0BusqNy4yIbdepKf2HnzMHiak;->f$2:[Z

    move-object v3, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/netease/ntunisdk/piclib/PicLibActivity;->lambda$processMedia$4$PicLibActivity([Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;[ZLcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;J)V

    return-void
.end method
