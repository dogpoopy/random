.class public Lcom/netease/mpay/oversea/w2;
.super Ljava/lang/Object;
.source "Entry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/w2$d;,
        Lcom/netease/mpay/oversea/w2$b;,
        Lcom/netease/mpay/oversea/w2$c;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lcom/netease/mpay/oversea/d4;

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Lcom/netease/mpay/oversea/w2$c;

.field public k:Lcom/netease/mpay/oversea/w2$d;

.field public l:Landroid/view/View$OnClickListener;

.field public m:Lcom/netease/mpay/oversea/w2$b;

.field public n:Lcom/netease/mpay/oversea/ui/e$c;

.field public o:I

.field private p:Lcom/netease/mpay/oversea/v2;

.field private q:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

.field private r:Ljava/lang/String;

.field private s:Z


# direct methods
.method public constructor <init>(ILcom/netease/mpay/oversea/v2;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/w2;->f:Z

    .line 4
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/w2;->h:Z

    .line 139
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/w2;->s:Z

    .line 140
    iput-object p2, p0, Lcom/netease/mpay/oversea/w2;->p:Lcom/netease/mpay/oversea/v2;

    .line 141
    iput-object p3, p0, Lcom/netease/mpay/oversea/w2;->q:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 142
    iput p1, p0, Lcom/netease/mpay/oversea/w2;->o:I

    .line 143
    iget-object p1, p2, Lcom/netease/mpay/oversea/v2;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/netease/mpay/oversea/w2;->a:Ljava/lang/String;

    .line 144
    iget-object p1, p2, Lcom/netease/mpay/oversea/v2;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/netease/mpay/oversea/w2;->c:Ljava/lang/String;

    .line 145
    iget-object p1, p2, Lcom/netease/mpay/oversea/v2;->h:Ljava/lang/String;

    iput-object p1, p0, Lcom/netease/mpay/oversea/w2;->r:Ljava/lang/String;

    .line 146
    iget-object p1, p2, Lcom/netease/mpay/oversea/v2;->m:Ljava/lang/String;

    iput-object p1, p0, Lcom/netease/mpay/oversea/w2;->b:Ljava/lang/String;

    .line 147
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/w2;->l()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 148
    new-instance p1, Lcom/netease/mpay/oversea/d4;

    const-string p3, "netease_mpay_oversea__usercenter_security_email_"

    invoke-direct {p1, p3, p2}, Lcom/netease/mpay/oversea/d4;-><init>(Ljava/lang/String;Lcom/netease/mpay/oversea/v2;)V

    iput-object p1, p0, Lcom/netease/mpay/oversea/w2;->d:Lcom/netease/mpay/oversea/d4;

    goto :goto_0

    .line 149
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/w2;->b:Ljava/lang/String;

    const-string p3, "home"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 150
    new-instance p1, Lcom/netease/mpay/oversea/d4;

    const-string p3, "netease_mpay_oversea__usercenter_home_"

    invoke-direct {p1, p3, p2}, Lcom/netease/mpay/oversea/d4;-><init>(Ljava/lang/String;Lcom/netease/mpay/oversea/v2;)V

    iput-object p1, p0, Lcom/netease/mpay/oversea/w2;->d:Lcom/netease/mpay/oversea/d4;

    goto :goto_0

    .line 152
    :cond_1
    new-instance p1, Lcom/netease/mpay/oversea/d4;

    const-string p3, "netease_mpay_oversea__usercenter_tab_"

    invoke-direct {p1, p3, p2}, Lcom/netease/mpay/oversea/d4;-><init>(Ljava/lang/String;Lcom/netease/mpay/oversea/v2;)V

    iput-object p1, p0, Lcom/netease/mpay/oversea/w2;->d:Lcom/netease/mpay/oversea/d4;

    .line 154
    :goto_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/w2;->d:Lcom/netease/mpay/oversea/d4;

    iget-boolean p1, p1, Lcom/netease/mpay/oversea/d4;->c:Z

    iput-boolean p1, p0, Lcom/netease/mpay/oversea/w2;->e:Z

    .line 155
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/w2;->f:Z

    const/4 p1, 0x1

    .line 156
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/w2;->g:Z

    .line 157
    new-instance p1, Lcom/netease/mpay/oversea/w2$a;

    invoke-direct {p1, p0}, Lcom/netease/mpay/oversea/w2$a;-><init>(Lcom/netease/mpay/oversea/w2;)V

    .line 164
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/f1;->a()Lcom/netease/mpay/oversea/f1;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/w2;->l:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static a(Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/w2;
    .locals 3

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/w2;

    invoke-static {}, Lcom/netease/mpay/oversea/v2;->c()Lcom/netease/mpay/oversea/v2;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p0}, Lcom/netease/mpay/oversea/w2;-><init>(ILcom/netease/mpay/oversea/v2;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object v0
.end method

.method public static b(Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)Lcom/netease/mpay/oversea/w2;
    .locals 3

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/w2;

    invoke-static {}, Lcom/netease/mpay/oversea/v2;->d()Lcom/netease/mpay/oversea/v2;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p0}, Lcom/netease/mpay/oversea/w2;-><init>(ILcom/netease/mpay/oversea/v2;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/w2;->q:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/netease/mpay/oversea/w2;->j:Lcom/netease/mpay/oversea/w2$c;

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {v0, p1}, Lcom/netease/mpay/oversea/w2$c;->b(I)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 3
    iput-object p1, p0, Lcom/netease/mpay/oversea/w2;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/w2;->b()Lcom/netease/mpay/oversea/v2;

    move-result-object v0

    iput-object p1, v0, Lcom/netease/mpay/oversea/v2;->m:Ljava/lang/String;

    return-void
.end method

.method public a(Z)Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/w2;->p:Lcom/netease/mpay/oversea/v2;

    iget v0, v0, Lcom/netease/mpay/oversea/v2;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public b()Lcom/netease/mpay/oversea/v2;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/w2;->p:Lcom/netease/mpay/oversea/v2;

    return-object v0
.end method

.method public b(Z)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/w2;->p:Lcom/netease/mpay/oversea/v2;

    iget v0, v0, Lcom/netease/mpay/oversea/v2;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/w2;->g:Z

    :cond_0
    return-void
.end method

.method public b(I)Z
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/w2;->j:Lcom/netease/mpay/oversea/w2$c;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p1}, Lcom/netease/mpay/oversea/w2$c;->a(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/w2;->p:Lcom/netease/mpay/oversea/v2;

    iget-object v0, v0, Lcom/netease/mpay/oversea/v2;->n:Ljava/lang/String;

    return-object v0
.end method

.method public c(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/w2;->s:Z

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/w2;->r:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/w2;->p:Lcom/netease/mpay/oversea/v2;

    iget-object v0, v0, Lcom/netease/mpay/oversea/v2;->d:Ljava/lang/String;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/w2;->p:Lcom/netease/mpay/oversea/v2;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/v2;->e()Z

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/w2;->p:Lcom/netease/mpay/oversea/v2;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/v2;->f()Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/w2;->p:Lcom/netease/mpay/oversea/v2;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/v2;->g()Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/w2;->s:Z

    return v0
.end method

.method public j()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/w2;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/oversea/w2;->b:Ljava/lang/String;

    const-string v1, "loading"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/w2;->p:Lcom/netease/mpay/oversea/v2;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/v2;->h()Z

    move-result v0

    return v0
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/w2;->p:Lcom/netease/mpay/oversea/v2;

    iget v0, v0, Lcom/netease/mpay/oversea/v2;->e:I

    invoke-static {v0}, Lcom/netease/mpay/oversea/v9;->a(I)Z

    move-result v0

    return v0
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/w2;->p:Lcom/netease/mpay/oversea/v2;

    iget v0, v0, Lcom/netease/mpay/oversea/v2;->f:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/w2;->p:Lcom/netease/mpay/oversea/v2;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/v2;->i()Z

    move-result v0

    return v0
.end method
