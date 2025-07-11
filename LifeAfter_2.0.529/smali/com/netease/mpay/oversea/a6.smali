.class public Lcom/netease/mpay/oversea/a6;
.super Lcom/netease/mpay/oversea/y;
.source "LoginPreference.java"


# instance fields
.field protected final c:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "com.netease.mpay."

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/netease/mpay/oversea/y;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/db;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/a6;->c:Ljava/lang/String;

    return-void
.end method
