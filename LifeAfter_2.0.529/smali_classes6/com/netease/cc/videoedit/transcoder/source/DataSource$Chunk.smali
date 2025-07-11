.class public Lcom/netease/cc/videoedit/transcoder/source/DataSource$Chunk;
.super Ljava/lang/Object;
.source "DataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/cc/videoedit/transcoder/source/DataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Chunk"
.end annotation


# instance fields
.field public buffer:Ljava/nio/ByteBuffer;

.field public bytes:I

.field public isKeyFrame:Z

.field public timestampUs:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
