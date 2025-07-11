.class public Lcom/netease/mpay/oversea/i3;
.super Ljava/lang/Object;
.source "FetchUrl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/i3$a;
    }
.end annotation


# direct methods
.method public static a(ILjava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;II)Lcom/netease/mpay/oversea/k3;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/n6;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/n6;",
            ">;II)",
            "Lcom/netease/mpay/oversea/k3;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mpay/oversea/i3$a;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/i3;->a()Lcom/netease/mpay/oversea/l3;

    move-result-object v0

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/netease/mpay/oversea/l3;->a(ILjava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;II)Lcom/netease/mpay/oversea/k3;

    move-result-object p0

    return-object p0
.end method

.method private static a()Lcom/netease/mpay/oversea/l3;
    .locals 1

    .line 2
    new-instance v0, Lcom/netease/mpay/oversea/j3;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/j3;-><init>()V

    return-object v0
.end method
