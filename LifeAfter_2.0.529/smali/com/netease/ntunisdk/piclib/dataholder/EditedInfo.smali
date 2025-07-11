.class public Lcom/netease/ntunisdk/piclib/dataholder/EditedInfo;
.super Ljava/lang/Object;
.source "EditedInfo.java"


# instance fields
.field public graffitiHistory:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/netease/ntunisdk/piclib/unit/PaintPathUnit;",
            ">;"
        }
    .end annotation
.end field

.field public mosaicHistory:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/netease/ntunisdk/piclib/unit/PaintPathUnit;",
            ">;"
        }
    .end annotation
.end field

.field public textUnitMap:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/Long;",
            "Lcom/netease/ntunisdk/piclib/unit/TextUnit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
