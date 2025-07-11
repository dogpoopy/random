.class public Lcom/netease/ntunisdk/piclib/dataholder/MediaBucketEntity;
.super Lcom/netease/ntunisdk/piclib/dataholder/SelFreAdapterEntity;
.source "MediaBucketEntity.java"


# instance fields
.field public bucketName:Ljava/lang/String;

.field public isSelected:Z

.field public mediaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;",
            ">;"
        }
    .end annotation
.end field

.field public offset:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/dataholder/SelFreAdapterEntity;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/MediaBucketEntity;->mediaList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/dataholder/MediaBucketEntity;->mediaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
