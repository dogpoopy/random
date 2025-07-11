.class Lcom/netease/mpay/oversea/ui/o$d;
.super Ljava/lang/Object;
.source "LoginTemplate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/o;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

.field final synthetic b:Lcom/netease/mpay/oversea/j;

.field final synthetic c:Lcom/netease/mpay/oversea/ui/o;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/o;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/o$d;->c:Lcom/netease/mpay/oversea/ui/o;

    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/o$d;->a:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iput-object p3, p0, Lcom/netease/mpay/oversea/ui/o$d;->b:Lcom/netease/mpay/oversea/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o$d;->c:Lcom/netease/mpay/oversea/ui/o;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/o;->k:Lcom/netease/mpay/oversea/ui/i;

    new-instance v1, Lcom/netease/mpay/oversea/ui/i$h;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/o$d;->a:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    iget-object v3, p0, Lcom/netease/mpay/oversea/ui/o$d;->b:Lcom/netease/mpay/oversea/j;

    invoke-direct {v1, v2, v3}, Lcom/netease/mpay/oversea/ui/i$h;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/o$d;->c:Lcom/netease/mpay/oversea/ui/o;

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 3
    invoke-virtual {v2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object v2

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    return-void
.end method
