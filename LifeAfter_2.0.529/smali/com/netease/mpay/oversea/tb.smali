.class public Lcom/netease/mpay/oversea/tb;
.super Lcom/netease/mpay/oversea/a9;
.source "UploadRoleResponse.java"


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/a9;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/tb;->a:Ljava/util/Map;

    return-void
.end method
