.class public Lcom/netease/mpay/oversea/g3;
.super Lcom/netease/mpay/oversea/y;
.source "ExtraPreference.java"


# instance fields
.field protected final c:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "com.netease.mpay.extra."

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/netease/mpay/oversea/y;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 3
    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/db;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/g3;->c:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/netease/mpay/oversea/g3;->c:Ljava/lang/String;

    :goto_0
    return-void
.end method
