.class Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager$LimitMap;
.super Ljava/util/LinkedHashMap;
.source "StackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LimitMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private QUEUE_MAX_SIZE:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    add-int/lit8 v0, p1, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 30
    invoke-direct {p0, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IF)V

    const/16 v0, 0x14

    .line 28
    iput v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager$LimitMap;->QUEUE_MAX_SIZE:I

    .line 31
    iput p1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager$LimitMap;->QUEUE_MAX_SIZE:I

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager$LimitMap;->size()I

    move-result p1

    iget v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager$LimitMap;->QUEUE_MAX_SIZE:I

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
