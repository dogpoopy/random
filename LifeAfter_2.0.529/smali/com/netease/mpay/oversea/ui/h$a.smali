.class Lcom/netease/mpay/oversea/ui/h$a;
.super Ljava/lang/Object;
.source "FeedbackHandler.java"

# interfaces
.implements Lcom/netease/mpay/oversea/ea;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/h;->a(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/mpay/oversea/ea<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/ui/h;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/h$a;->a:Lcom/netease/mpay/oversea/ui/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/netease/mpay/oversea/j;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 6
    iget-object p1, p2, Lcom/netease/mpay/oversea/j;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/h$a;->a:Lcom/netease/mpay/oversea/ui/h;

    iget-object p2, p2, Lcom/netease/mpay/oversea/j;->b:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Void;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/h$a;->a:Lcom/netease/mpay/oversea/ui/h;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/i;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/i;->a()V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/h$a;->a:Lcom/netease/mpay/oversea/ui/h;

    invoke-static {p1}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h;)Lcom/netease/mpay/oversea/ui/TransmissionData$FeedbackData;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/h$a;->a:Lcom/netease/mpay/oversea/ui/h;

    invoke-static {p1}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h;)Lcom/netease/mpay/oversea/ui/TransmissionData$FeedbackData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$FeedbackData;->a()Lcom/netease/mpay/oversea/FeedbackCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/h$a;->a:Lcom/netease/mpay/oversea/ui/h;

    invoke-static {p1}, Lcom/netease/mpay/oversea/ui/h;->a(Lcom/netease/mpay/oversea/ui/h;)Lcom/netease/mpay/oversea/ui/TransmissionData$FeedbackData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$FeedbackData;->a()Lcom/netease/mpay/oversea/FeedbackCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/netease/mpay/oversea/FeedbackCallback;->onSuccess()V

    :cond_1
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/ui/h$a;->a(Ljava/lang/Void;)V

    return-void
.end method
