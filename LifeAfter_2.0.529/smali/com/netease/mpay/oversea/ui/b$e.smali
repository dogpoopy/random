.class public Lcom/netease/mpay/oversea/ui/b$e;
.super Ljava/lang/Object;
.source "AdapterViewData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/ui/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final a:Lcom/netease/mpay/oversea/ui/b$c;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netease/mpay/oversea/ui/b$c;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/netease/mpay/oversea/ui/b$e;-><init>(Lcom/netease/mpay/oversea/ui/b$c;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/netease/mpay/oversea/ui/b$c;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/b$e;->a:Lcom/netease/mpay/oversea/ui/b$c;

    .line 4
    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/b$e;->b:Ljava/lang/String;

    return-void
.end method
