.class Lcom/netease/mpay/oversea/ui/l$a;
.super Ljava/lang/Object;
.source "GuestLogin.java"

# interfaces
.implements Lcom/netease/mpay/oversea/ui/q$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/l;->c(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/l$a;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/l$a;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/l$a;->a:Landroid/app/Activity;

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/l$a;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/ui/l;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-void
.end method
