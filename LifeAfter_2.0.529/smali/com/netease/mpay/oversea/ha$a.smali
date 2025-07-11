.class Lcom/netease/mpay/oversea/ha$a;
.super Ljava/lang/Object;
.source "SimpleDatePickerDialog.java"

# interfaces
.implements Landroid/widget/DatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ha;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/netease/mpay/oversea/ha;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ha;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ha$a;->d:Lcom/netease/mpay/oversea/ha;

    iput-object p2, p0, Lcom/netease/mpay/oversea/ha$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/oversea/ha$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/mpay/oversea/ha$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateChanged(Landroid/widget/DatePicker;III)V
    .locals 5

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "year:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",monthOfYear:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",dayOfMonth:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    const-string p1, "0"

    const/16 v0, 0xa

    if-ge p4, v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/netease/mpay/oversea/ha$a;->d:Lcom/netease/mpay/oversea/ha;

    new-instance v2, Lcom/netease/mpay/oversea/p1;

    invoke-static {v1}, Lcom/netease/mpay/oversea/ha;->b(Lcom/netease/mpay/oversea/ha;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/netease/mpay/oversea/ha$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v0

    :goto_1
    const/4 v4, 0x0

    invoke-direct {v2, v4, p4, v3, v0}, Lcom/netease/mpay/oversea/p1;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/netease/mpay/oversea/ha;->a(Lcom/netease/mpay/oversea/ha;Lcom/netease/mpay/oversea/p1;)Lcom/netease/mpay/oversea/p1;

    const/16 p4, 0x9

    if-ge p3, p4, :cond_2

    .line 4
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p3, 0x1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    add-int/lit8 p1, p3, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 5
    :goto_2
    iget-object p4, p0, Lcom/netease/mpay/oversea/ha$a;->d:Lcom/netease/mpay/oversea/ha;

    new-instance v0, Lcom/netease/mpay/oversea/p1;

    add-int/lit8 p3, p3, 0x1

    invoke-static {p4}, Lcom/netease/mpay/oversea/ha;->b(Lcom/netease/mpay/oversea/ha;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ha$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_3
    move-object v1, p1

    :goto_3
    invoke-direct {v0, v4, p3, v1, p1}, Lcom/netease/mpay/oversea/p1;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p4, v0}, Lcom/netease/mpay/oversea/ha;->b(Lcom/netease/mpay/oversea/ha;Lcom/netease/mpay/oversea/p1;)Lcom/netease/mpay/oversea/p1;

    .line 6
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object p3, p0, Lcom/netease/mpay/oversea/ha$a;->d:Lcom/netease/mpay/oversea/ha;

    new-instance p4, Lcom/netease/mpay/oversea/p1;

    invoke-static {p3}, Lcom/netease/mpay/oversea/ha;->b(Lcom/netease/mpay/oversea/ha;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ha$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_4
    move-object v0, p1

    :goto_4
    invoke-direct {p4, v4, p2, v0, p1}, Lcom/netease/mpay/oversea/p1;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p3, p4}, Lcom/netease/mpay/oversea/ha;->c(Lcom/netease/mpay/oversea/ha;Lcom/netease/mpay/oversea/p1;)Lcom/netease/mpay/oversea/p1;

    return-void
.end method
