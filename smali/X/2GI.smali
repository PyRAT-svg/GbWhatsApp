.class public LX/2GI;
.super LX/26Z;
.source ""


# direct methods
.method public constructor <init>(LX/1S9;J)V
    .locals 1

    const/16 v0, 0x16

    invoke-direct {p0, p1, p2, p3, v0}, LX/26Z;-><init>(LX/1S9;JB)V

    return-void
.end method

.method public constructor <init>(LX/1S9;JLjava/lang/String;)V
    .locals 1

    const/16 v0, 0x16

    invoke-direct {p0, p1, p2, p3, v0}, LX/26Z;-><init>(LX/1S9;JB)V

    iput-object p4, p0, LX/26Z;->A00:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public A2f(Landroid/content/Context;LX/0tq;LX/2La;ZZ)V
    .locals 3

    iget-object v0, p3, LX/2Hf;->A01:LX/2Hg;

    check-cast v0, LX/2Ld;

    invoke-virtual {v0}, LX/2Ld;->A0U()LX/3Hw;

    move-result-object v0

    invoke-virtual {v0}, LX/2Hg;->A06()LX/2Hf;

    move-result-object v2

    check-cast v2, LX/3Hv;

    iget-object v0, v2, LX/2Hf;->A01:LX/2Hg;

    check-cast v0, LX/3Hw;

    invoke-virtual {v0}, LX/3Hw;->A0S()LX/3J4;

    move-result-object v0

    invoke-virtual {v0}, LX/2Hg;->A06()LX/2Hf;

    move-result-object v0

    check-cast v0, LX/3J3;

    invoke-virtual {p0, v0}, LX/26Z;->A0u(LX/3J3;)LX/3J3;

    invoke-virtual {v2}, LX/2Hf;->A03()V

    iget-object v1, v2, LX/2Hf;->A01:LX/2Hg;

    check-cast v1, LX/3Hw;

    invoke-virtual {v0}, LX/2Hf;->A02()LX/2Hg;

    move-result-object v0

    check-cast v0, LX/3J4;

    iput-object v0, v1, LX/3Hw;->A01:LX/3J4;

    iget v0, v1, LX/3Hw;->A00:I

    or-int/lit8 v0, v0, 0x1

    iput v0, v1, LX/3Hw;->A00:I

    invoke-virtual {p3}, LX/2Hf;->A03()V

    iget-object v0, p3, LX/2Hf;->A01:LX/2Hg;

    check-cast v0, LX/2Ld;

    invoke-static {v0, v2}, LX/2Ld;->A0I(LX/2Ld;LX/3Hv;)V

    return-void
.end method
