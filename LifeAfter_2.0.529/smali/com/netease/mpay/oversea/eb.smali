.class public Lcom/netease/mpay/oversea/eb;
.super Lcom/netease/mpay/oversea/x2;
.source "UIEvent.java"


# instance fields
.field private b:Lcom/netease/mpay/oversea/w2;


# direct methods
.method public constructor <init>(Lcom/netease/mpay/oversea/w2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/x2;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/eb;->b:Lcom/netease/mpay/oversea/w2;

    return-void
.end method


# virtual methods
.method public c()Lcom/netease/mpay/oversea/w2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/eb;->b:Lcom/netease/mpay/oversea/w2;

    return-object v0
.end method
