.class public final synthetic LX/1Bs;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic A00:LX/1Eq;

.field private final synthetic A01:LX/1SB;


# direct methods
.method public synthetic constructor <init>(LX/1Eq;LX/1SB;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX/1Bs;->A00:LX/1Eq;

    iput-object p2, p0, LX/1Bs;->A01:LX/1SB;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, LX/1Bs;->A00:LX/1Eq;

    iget-object v2, p0, LX/1Bs;->A01:LX/1SB;

    iget-object v0, v0, LX/1Eq;->A05:LX/1xo;

    invoke-static {}, LX/1Ts;->A02()V

    iget-object v0, v0, LX/1Tk;->A00:LX/1Tr;

    invoke-virtual {v0}, LX/1Tr;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX/1Dt;

    invoke-virtual {v0, v2}, LX/1Dt;->A02(LX/1SB;)V

    goto :goto_0

    :cond_0
    return-void
.end method
